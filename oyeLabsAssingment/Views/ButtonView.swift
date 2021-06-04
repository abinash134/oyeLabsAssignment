//
//  ButtonView.swift
//  oyeLabsAssingment
//
//  Created by Abinash Pradhan on 03/06/21.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button(action: {}, label: {
            Text("Sign In")
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: 50,  alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(30)
                
        })
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView().previewLayout(.sizeThatFits)
    }
}
