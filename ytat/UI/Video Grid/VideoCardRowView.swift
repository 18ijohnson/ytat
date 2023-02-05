//
//  VideoCardRowView.swift
//  ytat
//
//  Created by Isaac Johnson on 1/27/23.
//

import SwiftUI

struct VideoCardRowView: View {
    var videoCardRow: VideoCardRow
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            HStack{
                AsyncImage(
                    url: videoCardRow.thumbnail,
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 88)
                    },
                    placeholder: {
                        
                    }
                )
                Text(videoCardRow.title)
                    .font(.headline)
                    .padding(.leading, 17.5)
            }
            ScrollView(.horizontal){
                LazyHStack(alignment: .top, spacing:15/*10*/){
                    ForEach(videoCardRow.videoCards, id: \.self) { card in
                        VideoCardView(videoCard: card)
                    }
                }
                .frame(maxHeight: 400, alignment: .topLeading)
            }
            .padding(.leading, 15)
            //.border(Color.green)
        }
        .frame(maxWidth: .infinity)
        //.border(Color.blue)
    }
}

struct VideoCardRowView_Previews: PreviewProvider {
    static var previews: some View {
        VideoCardRowView(videoCardRow: VideoCardRow.example)
    }
}
