//
//  TestView.swift
//  DormEase
//
//  Created by Gayrat Rakhimov on 19/10/23.
//

import SwiftUI

struct TestView: View {
    
    @State private var isOn = true
    
    var viewModel = TestViewModel()
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                ForEach(viewModel.questions) { question in
                    ZStack(alignment: .leading) {
                        Color.orange.clipShape(RoundedRectangle(cornerRadius: 15))
                        VStack(alignment: .leading) {
                            Text(question.question).font(.system(size: 20)).bold()
                            ForEach(question.options){
                                option in
                                HStack {
                                    Image("unchecked")
                                    Text(option.text).font(.system(size: 20))
                                        .padding(.bottom, 10)
                                }
                                
                            }
                        }
                        .padding()
                    }
                    
                    
                }
                
            }
            .padding()
            .navigationTitle("Test")
        }
    }
    
}

#Preview {
    TestView()
}
