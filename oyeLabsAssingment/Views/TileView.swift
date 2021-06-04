//
//  TileView.swift
//  oyeLabsAssingment
//
//  Created by Abinash Pradhan on 03/06/21.
//

import SwiftUI

struct TileView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.red)
                
            Text("Hello")
                
        }.frame(maxWidth:.infinity,maxHeight: 400)
        }
    }


struct TileView_Previews: PreviewProvider {
    static var previews: some View {
        TileView().previewLayout(.sizeThatFits)
    }
}
