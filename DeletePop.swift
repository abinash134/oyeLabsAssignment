//
//  DeletePop.swift
//  oyeLabsAssingment
//
//  Created by Abinash Pradhan on 03/06/21.
//

import SwiftUI

struct DeletePop: View {
    let screenSize = UIScreen.main.bounds
    @Binding var isShown: Bool
    @Binding var deleteConfirmed:Bool
    var title : String="Delete Item?"
    var onDone: () -> Void = { }
    var onCancel: () -> Void = { }
    
    var body: some View {
        VStack{
            Text(title)
                .font(.headline)
            
            HStack(spacing: 20) {
                Button("Yes") {
                    self.isShown = false
                    self.onDone()
                }.accentColor(.green)
                .padding()
                
                Button("Cancel") {
                    self.isShown = false
                    self.onCancel()
                }.accentColor(.red)
                .padding()
            }
        }
        .padding()
        .frame(width: screenSize.width * 0.7, height: screenSize.height * 0.3)
        .background(Color(#colorLiteral(red: 0.9268686175, green: 0.9416290522, blue: 0.9456014037, alpha: 1)))
        .clipShape(RoundedRectangle(cornerRadius: 20.0, style: .continuous))
        .offset(y: isShown ? 0 : screenSize.height)
        .animation(.spring())
        .shadow(color: Color(#colorLiteral(red: 0.8596749902, green: 0.854565084, blue: 0.8636032343, alpha: 1)), radius: 6, x: -9, y: -9)

        
    
    }
}

struct DeletePop_Previews: PreviewProvider {
    static var previews: some View {
        DeletePop(isShown: .constant(true),deleteConfirmed: .constant(true))
    }
}
