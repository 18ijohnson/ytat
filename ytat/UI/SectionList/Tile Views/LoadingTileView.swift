//
//  LoadingTileView.swift
//  ytat
//
//  Created by Isaac Johnson on 3/11/23.
//

import SwiftUI

struct LoadingTileView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 444, height: 250)
                .foregroundColor(.gray)
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 444, height: 40)
                .foregroundColor(.gray)
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 300, height: 25)
                .foregroundColor(.gray)
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 250, height: 25)
                .foregroundColor(.gray)
            Spacer()
        }
        .frame(width: 444, height: 415)
    }
}

struct LoadingTileView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingTileView()
    }
}
