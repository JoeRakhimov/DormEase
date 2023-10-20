//
//  ContentView.swift
//  DormEase
//
//  Created by Gayrat Rakhimov on 19/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            
            ZStack {
                Image("naplesss")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 520, height:903)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    
                    Capsule()
                        .fill(Color.white)
                        .frame(width: 330, height: 90)
                        .overlay(
                            Capsule()
                                .stroke(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255), lineWidth: 7)
                        )
                        .offset(x: 0, y: -600)
                    
                    Text("Welcome to DormEase")
                        .foregroundColor(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255))
                        .font(.title)
                        .bold()
                        .offset(x: 0, y: -670)
                }
                
                Spacer()
                
                NavigationLink(destination: TestView()) {
                    Circle()
                        .stroke(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255), lineWidth: 7)
                        .frame(width: 160, height: 160)
                        .background(Circle().foregroundColor(.white))
                        .overlay(
                            Text("START!")
                                .foregroundColor(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255))
                                .font(.system(size: 40, weight: .bold))
                                .frame(width: 162, height: 32)
                        ).offset(x: 0, y: 100)
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

