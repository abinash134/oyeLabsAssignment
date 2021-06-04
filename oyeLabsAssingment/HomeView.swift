//
//  HomeView.swift
//  oyeLabsAssingment
//
//  Created by Abinash Pradhan on 03/06/21.
//

import SwiftUI
import UIKit


struct HomeView: View {
    @State private var showDialog = false
    @State private var DeleteAlertShow = false
    @State private var deleteConfirm = false
    @State private var text: String = ""
    @State var itemArray: [String] = ["food store", "supermarket", "grocery store", "convenience store", "farmers' market", "food market"]
    
    @State var pos:Int
    var body: some View {
        NavigationView{
            ZStack {
                List(itemArray,id: \.self){item in
                    Button(action:{
                        print(item)
                        if let index = itemArray.firstIndex(of: item) {
                            print(index)
                            pos = index
                        }
                        self.DeleteAlertShow = true
                        
                    }) {
                        ZStack {
                            Rectangle()
                                .fill(Color("Color\(Int.random(in: 1...5))"))
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                            
                            Text(item)
                            
                            
                            
                        }
                    }
                }
                .navigationTitle("Oyelab")
                .navigationBarItems(trailing: Button("Add Item") {
                    self.showDialog = true
                })
                
                //                VStack {
                //                    Spacer()
                //                    Button(action: {
                //                        self.text = ""
                //                        self.showDialog = true
                //                        print("pressed")
                //                    }) {
                //                        AddButtonView()
                //                    }
                //
                //                }
                
                AlertView(isShown: $showDialog, text: $text,onDone: { text in
                    self.itemArray.append(text)
                })
                DeletePop(isShown: $DeleteAlertShow, deleteConfirmed: $deleteConfirm,onDone: {
                    print(pos)
                    self.itemArray.remove(at: pos)
                })
            }
            
            
            
            
        }
        
        
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(pos: 0).navigationTitle("Title")
    }
}

