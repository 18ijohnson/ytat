//
//  HeaderView.swift
//  ytat
//
//  Created by Isaac Johnson on 1/27/23.
//

import SwiftUI

struct HeaderView: View {
    @State var date = Date()

    var body: some View {
        VStack{
            HStack(alignment: .top){
                HStack(spacing:0) {
                    Image(decorative: "Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxHeight: 75)
                        .padding(-15)
//                    Text("YT Apple TV")
//                        .fontWeight(.bold)
//                        .padding(.leading)
//                        .font(.system(size: 38, design: .rounded))
                }
                Spacer()
                SwiftUI.Text(date.formatted(date: .omitted, time: .shortened))
                    .fontWeight(.bold)
                    .padding(.trailing)
                    .font(.system(size: 38, design: .rounded))
            }
            .padding(0)
            Spacer()
        }
        .background(Color.black)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
