//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by p0nyqz on 25.05.2022.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}
