//
//  ContentView.swift
//  oyeLabsAssingment
//
//  Created by Abinash Pradhan on 03/06/21.
//

import SwiftUI

struct ContentView: View {
    @State private var emailString  : String = ""
    @State private var textEmail    : String = ""
    @State private var isEmailValid : Bool   = true
    @State private var passwordtext    : String = ""
    @State private var passwordtextVisibile  : Bool = true

    
    
    
    var body: some View {
        NavigationView{
            
            VStack(spacing:20){
                Text("Welcome Back!")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .foregroundColor(.red)
                Text("Please Login to Continue...")
                HStack{
                    TextField("email...", text: $textEmail, onEditingChanged: { (isChanged) in
                                if !isChanged {
                                    if self.textFieldValidatorEmail(self.textEmail) {
                                        self.isEmailValid = true
                                    } else {
                                        self.isEmailValid = false
                                        self.textEmail = ""
                                    }
                                }
                            })
                    .padding()
                    
                }
                HStack{
                    if !isEmailValid {
                        Text("Please enter a valid email.").foregroundColor(.red)
                    }
                }
                HStack {
                    
                    if passwordtextVisibile {
                        TextField("password", text: $passwordtext).padding()
                                } else {
                                    SecureField("password", text: $passwordtext).padding()
                                }
                    Button(action: {
                        self.passwordtextVisibile.toggle()
                    }) {
                        Image(systemName: "eye")
                            .foregroundColor(.gray)
                    }
                }
                HStack{
                    Spacer()
                    Text("Forget Password?")
                        .padding()
                        .foregroundColor(.red)
                }
                
                    NavigationLink(
                        destination: HomeView( pos: 0),
                        label: {
                            Text("Sign In")
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: 50,  alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                                .padding()
                        })
                    
                
                
            }.padding()
            
        }//vastack
    }
    func textFieldValidatorEmail(_ string: String) -> Bool {
        if string.count > 100 {
            return false
        }
        let emailFormat = "(?:[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}" + "~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\" + "x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[\\p{L}0-9](?:[a-" + "z0-9-]*[\\p{L}0-9])?\\.)+[\\p{L}0-9](?:[\\p{L}0-9-]*[\\p{L}0-9])?|\\[(?:(?:25[0-5" + "]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-" + "9][0-9]?|[\\p{L}0-9-]*[\\p{L}0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21" + "-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
        //let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: string)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


