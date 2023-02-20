//
//  DefaultSectionView.swift
//  ytat
//
//  Created by Isaac Johnson on 2/19/23.
//

import SwiftUI

struct DefaultSectionView: View {
    let section: SectionList
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing: 10) {
                ForEach(section.sectionListRenderer.contents) { shelf in
                    DefaultShelfView(shelf: shelf)
                }
                .frame(alignment: .topLeading)
            }
        }
        .border(.blue)
    }
}

struct DefaultSectionView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultSectionView(section: Examples.defaultSection)
    }
}
