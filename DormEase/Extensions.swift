//
//  Extensions.swift
//  NaplesNest
//
//  Created by Gayrat Rakhimov on 28/10/23.
//

import Foundation
import SwiftUI

extension Text {
    func orangeTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
