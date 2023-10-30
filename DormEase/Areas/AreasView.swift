//
//  AreasView.swift
//  NaplesNest
//
//  Created by Gayrat Rakhimov on 29/10/23.
//

import SwiftUI

struct AreasView: View {
    
    @EnvironmentObject var testViewModel: TestViewModel
    @StateObject var viewModel = AreaViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(viewModel.filteredAreas) { area in
                    
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
                    
                }.padding(.horizontal)
                
                NavigationLink(destination: TestView()) {
                    PrimaryButton(text: "Take test again", background:Color("AccentColor"))
                }.padding()
                
            }
            .navigationTitle("Result")
            .onAppear(perform: {
                viewModel.filterAreasByPersonalityType(personalityType: testViewModel.result)
            })
        }.navigationBarBackButtonHidden(true)
    }
    
}

#Preview {
    AreasView().environmentObject(TestViewModel())
}
