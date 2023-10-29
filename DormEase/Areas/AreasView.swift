//
//  AreasView.swift
//  NaplesNest
//
//  Created by Gayrat Rakhimov on 29/10/23.
//

import SwiftUI

struct AreasView: View {
    
    @EnvironmentObject var testViewModel: TestViewModel
    var viewModel = AreaViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(viewModel.areas) { area in
                    
                    NavigationLink {
                        ResultView(area: area)
                    } label: {
                        ZStack(alignment: .bottomLeading) {
                            
                            Image(area.areaImage)
                                .resizable()
                                .frame(height: 200)
                                .clipped()
                                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                            
                            VStack {
                                Text(area.areaName).font(.title).bold()
                            }.foregroundStyle(.white)
                                .padding()
                                .shadow(color: Color.black, radius: 1, x: 0, y: 0)
                            
                        }
                    }
                    
                    
                }.padding()
            }
            .navigationTitle("Result")
        }
    }
    
}

#Preview {
    AreasView().environmentObject(TestViewModel())
}
