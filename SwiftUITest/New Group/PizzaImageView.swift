//
//  PizzaImageView.swift
//  SwiftUITest
//
//  Created by Georgi Malkhasyan on 11/19/20.
//

import SwiftUI

struct PizzaImageView: View {
    var body: some View {
        VStack{
            Image("1_100w")
                .resizable()
                .scaledToFit()
                .shadow(radius: 10)
                .cornerRadius(10)
        }
    }
}

struct PizzaImageView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaImageView()
    }
}
