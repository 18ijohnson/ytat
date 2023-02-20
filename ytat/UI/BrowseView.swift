//
//  BrowseView.swift
//  ytat
//
//  Created by Isaac Johnson on 2/19/23.
//

import SwiftUI

struct BrowseView: View {
    
    let response: BrowseResponse
    
    init(topic: String) {
        print("!!!Loading selction: \(topic)")
        self.response = callBrowseAPI(topic: topic)
    }
    
    var body: some View {
        DefaultSectionView(section: response.contents.tvBrowseRenderer.content.tvSurfaceContentRenderer.content)
    }
}

//struct BrowseView_Previews: PreviewProvider {
//    static var previews: some View {
//        BrowseView(topic: "default")
//    }
//}
