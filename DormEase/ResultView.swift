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
                    .offset(x: 0, y: -60)
                
                Text("San Giovanni-Barra")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
                    .background(Color.orange.opacity(0.7))
                    .cornerRadius(15)
                    .offset(x: 0, y: -60)
            }
            
            Spacer()
            
            Text("University of Naples Federico II - Polytechnic and Basic Sciences School - Naples East Complex\nAddress: Corso Nicolangelo Protopisani, 70, 80146 Naples ΝΑ\n\nEssential Services:\n- Municipality of Naples (Town Hall)\n- UniCredit\n- Post Office - Poste Italiane\n- Decò Maxistore\n\nTransport:\n- Line 2 metro stop: San Giovanni - Barra\n- Circumvesuviana stop: S. Giovanni a Teduccio\n\nAttractions:\n- Church Crowned Mother of Consolation\n- Madonna of the Christopher Columbus arch")
                .foregroundColor(.black)
                .font(.body)
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 25)
                .offset(x: 0, y: -70)
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}

