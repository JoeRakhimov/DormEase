//
//  ContentView.swift
//  DormEase
//
//  Created by Gayrat Rakhimov on 19/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("naplesss")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 700)
                    .edgesIgnoringSafeArea(.all)
                    .offset(x: 0, y: -210)
                
                Capsule()
                    .fill(Color.white)
                    .frame(width: 330, height: 90)
                    .overlay(
                        Capsule()
                            .stroke(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255), lineWidth: 7)
                    )
                    .padding(.bottom, 400)
                
                Text("Welcome to NaplesNest")
                    .foregroundColor(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255))
                    .font(.system(size: 24))
                    .bold()
                    .padding(.bottom, 400)
                
               
                
                VStack {
                    
                    Spacer()
                    
                    Text("Take test to find the best place to live according to your personality")
                        .foregroundColor(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255))
                        .font(.system(size: 20))
                        .bold()
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: TestView()) {
                        PrimaryButton(text: "Lets GO!", background: Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255))
                    }
                    .navigationBarHidden(true)
                    .padding(.bottom, 70)
                }
                .padding(.bottom, 30)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
