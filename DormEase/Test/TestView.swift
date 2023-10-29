//
//  TestView.swift
//  DormEase
//
//  Created by Gayrat Rakhimov on 19/10/23.
//


import SwiftUI

struct TestView: View {

    @StateObject var viewModel = TestViewModel()
    var option = Option(text: "Rome")
    
    var body: some View {
        VStack(spacing: 20) {
            
            HStack {
                Text("Test").orangeTitle()
                
                Spacer()
                
                Text("\(viewModel.index + 1) out of \(viewModel.length)")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
            }
            
            ProgressBar(progress: viewModel.progress)
            
            Text(viewModel.question)
                .font(.system(size: 20))
                .bold()
                .foregroundColor(.gray)
            
            ForEach(viewModel.options, id: \.id) { option in
                OptionRow(option: option)
                    .environmentObject(viewModel)
            }
            
            if viewModel.reachedEnd {
                NavigationLink(destination: AreasView().environmentObject(viewModel)) {
                    PrimaryButton(text: "Go to results", background:Color("AccentColor"))
                    }
            } else {
                Button {
                    viewModel.goToNextQuestion()
                } label: {
                    PrimaryButton(text: "Next", background: viewModel.optionSelected ? Color("AccentColor") : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
                }
                .disabled(!viewModel.optionSelected)
            }
            
            
            
            
            Text("IE: \(viewModel.totalIE)")
            Text("SN: \(viewModel.totalSN)")
            Text("FT: \(viewModel.totalFT)")
            Text("JP: \(viewModel.totalJP)")
            Text(viewModel.result)
            
        }
        .padding()
        .navigationBarHidden(true)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

