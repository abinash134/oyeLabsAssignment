//
//  AddButtonView.swift
//  oyeLabsAssingment
//
//  Created by Abinash Pradhan on 03/06/21.
//

import SwiftUI

struct AddButtonView: View {
    var body: some View {
        Button(action: {}, label: {
            Text("Add Items")
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: 50,  alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(30)
                
        })
    }
}

struct AddButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonView().previewLayout(.sizeThatFits)
    }
}
