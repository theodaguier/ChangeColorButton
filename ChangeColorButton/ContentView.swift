//
//  ContentView.swift
//  ChangeColorButton
//
//  Created by Théo Daguier on 20/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var bgColor = Color.white
    
    var body: some View {
        ZStack {
            bgColor
                .ignoresSafeArea(.all)
            HStack{
                ZStack {
                    RoundedRectangle(cornerRadius: 15 )
                        .frame(width: 100.0, height: 50.0)
                        .foregroundColor(.red)
                    Button(action: {
                        bgColor = Color.red
                    }, label: {
                        HStack{
                            Image(systemName: "eyedropper")
                                .foregroundColor(Color.white)
                            HStack{
                                Text("Red")
                                    .foregroundColor(Color.white)
                            }
                        }
                    })
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 15 )
                        .frame(width: 100.0, height: 50.0)
                        .foregroundColor(.green)
                    Button(action: {
                        bgColor = Color.green
                    }, label: {
                        HStack{
                            Image(systemName: "eyedropper")
                                .foregroundColor(Color.white)
                            HStack{
                                Text("Green")
                                    .foregroundColor(Color.white)
                            }
                        }
                    })
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 15 )
                        .frame(width: 100.0, height: 50.0)
                        .foregroundColor(.blue)
                    Button(action: {
                        bgColor = Color.blue
                    }, label: {
                        HStack{
                            Image(systemName: "eyedropper")
                                .foregroundColor(Color.white)
                            HStack{
                                Text("Blue")
                                    .foregroundColor(Color.white)
                            }
                        }
                    })
                }
            }
        }
    }
        .ignoresSafeArea(.all)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
