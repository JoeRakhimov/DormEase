//
//  ResultView.swift
//  NaplesNest
//
//  Created by Arsenii Dudyk on 26/10/23.
//

import SwiftUI

struct ResultView: View {
    
    var area : Area
    
    var body: some View {
        VStack {
    
            Image(area.areaImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 250)
            
            Text(area.areaDescription)
                .foregroundColor(.black)
                .font(.body)
                .multilineTextAlignment(.leading)
                .padding()
            
            Spacer()
            
        }.navigationTitle(area.areaName)
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(area: Area(areaName: "San Giovanni - Barra",
            areaImage: "San_giovanni_-_barra", areaDescription: "University of Naples Federico II - Polytechnic and Basic Sciences School - Naples East Complex\nAddress: Corso Nicolangelo Protopisani, 70, 80146 Naples ΝΑ\n\nEssential Services:\n- Municipality of Naples (Town Hall)\n- UniCredit\n- Post Office - Poste Italiane\n- Decò Maxistore\n\nTransport:\n- Line 2 metro stop: San Giovanni - Barra\n- Circumvesuviana stop: S. Giovanni a Teduccio\n\nAttractions:\n- Church Crowned Mother of Consolation\n- Madonna of the Christopher Columbus arch"))
    }
}

