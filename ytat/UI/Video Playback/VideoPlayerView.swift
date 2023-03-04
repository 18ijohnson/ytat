import Foundation
import SwiftUI
import AVKit

struct VideoPlayerView: UIViewControllerRepresentable {
    @Binding var videoInfo: VideoInfoResponse
    @State var playbackSpeed: Float = 1
    
    //MARK: - Coordinator
    class Coordinator: NSObject, AVPlayerViewControllerDelegate {
        let parent: VideoPlayerView
        var videoURL: URL?

        init(_ parent: VideoPlayerView) {
            self.parent = parent
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    //MARK: - UIViewController
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let vc = AVPlayerViewController()
        let playerItem = createAVPlayerItem()
        
        vc.delegate = context.coordinator
        vc.transportBarCustomMenuItems = [createSpeedMenu()]
        vc.player = AVPlayer(playerItem: playerItem)
        vc.player?.rate = playbackSpeed
        vc.player?.play()
        
        context.coordinator.videoURL = (playerItem.asset as? AVURLAsset)?.url
        
        return vc
    }

    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        // Check if the video URL has changed
        if let url: URL = context.coordinator.videoURL, let currentURL: URL = (uiViewController.player?.currentItem?.asset as? AVURLAsset)?.url, url != currentURL {
            // If the URL has changed, create a new AVPlayerItem with the new URL
            let playerItem = createAVPlayerItem()
            // Replace the current player item with the new one
            uiViewController.player?.replaceCurrentItem(with: playerItem)
        }
        
        if uiViewController.player?.rate != playbackSpeed { uiViewController.player?.rate = playbackSpeed }
    }
    
    
    //MARK: - AVPlayerItem
    func createAVPlayerItem() -> AVPlayerItem {
        let asset = AVURLAsset(url: URL(string: videoInfo.streamingData.hlsManifestURL)!)
        let playerItem = AVPlayerItem(asset: asset)
        playerItem.externalMetadata = makeExternalMetadata()
        
        return playerItem
    }
        
    //MARK: External Metadata
    func makeExternalMetadata() -> [AVMetadataItem] {
        var metadata = [AVMetadataItem]()
        
        let titleItem = makeMetadataItem(.commonIdentifierTitle, value: videoInfo.videoDetails.title)
        metadata.append(titleItem)
        
        let descItem = makeMetadataItem(.commonIdentifierDescription, value: videoInfo.videoDetails.shortDescription!)
        metadata.append(descItem)
        
        let authorItem = makeMetadataItem(.commonIdentifierAuthor, value: videoInfo.videoDetails.author)
        metadata.append(authorItem)
        
        return metadata
    }

    private func makeMetadataItem(_ identifier: AVMetadataIdentifier, value: Any) -> AVMetadataItem {
        let item = AVMutableMetadataItem()
        item.identifier = identifier
        item.value = value as? NSCopying & NSObjectProtocol
        item.extendedLanguageTag = "und"
        return item.copy() as! AVMetadataItem
    }
    
    func createSpeedMenu() -> UIMenu {
        let intervals = Array<Float>(stride(from: 0.5, through: 2, by: 0.5)) //todo figure out why this breaks above 2
        var speeds = [UIAction]()
        
        for interval in intervals {
            speeds.append(UIAction(title: String(interval), handler: { _ in playbackSpeed = interval }))
        }
        
        // create and return a menu with the speeds array as its actions
        let submenu = UIMenu(title: "PlaybackSpeed", options: [.displayInline, .singleSelection], children: speeds)
        let menu = UIMenu(title: "Playback Speed", image: UIImage(systemName: "speedometer"), children: [submenu])
        return menu
    }

}
