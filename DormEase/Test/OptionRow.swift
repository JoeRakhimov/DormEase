//
//  OptionRow.swift
//  NaplesNest
//
//  Created by Gayrat Rakhimov on 28/10/23.
//

import SwiftUI

struct OptionRow: View {
    
    @EnvironmentObject var viewModel: TestViewModel
    
    var option: Option
    @State private var isSelected = false
    
    var body: some View {
        HStack(spacing: 20) {
            
            if isSelected {
                Image(systemName: "checkmark.circle.fill")
                    .font(.caption)
                    .foregroundColor(Color("AccentColor"))
                
                Text(option.text)
                    .bold()
                    .foregroundColor(Color("AccentColor"))
            } else {
                Image(systemName: "circle.fill")
                    .font(.caption)
                
                Text(option.text)
                    .bold()
            }
            
            
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(.white)
        .cornerRadius(10)
        .shadow(color: .gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
            if !viewModel.optionSelected {
                isSelected = true
                viewModel.selectOption(option: option)
            }
        }
    }
    
}

struct OptionRow_Previews: PreviewProvider {
    static var previews: some View {
        OptionRow(option: Option(text: "Option text"))
    }
}
    
    
    
