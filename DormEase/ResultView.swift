//
//  ResultView.swift
//  NaplesNest
//
//  Created by Arsenii Dudyk on 26/10/23.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("San_giovanni_-_barra")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 2000, height: 250)
                    
             
            }
            
            Text("Additional Information")
                .foregroundColor(.black)
                .font(.body)
        }
        .padding()
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
