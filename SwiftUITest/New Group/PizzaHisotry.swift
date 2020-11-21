//
//  PizzaHisotry.swift
//  SwiftUITest
//
//  Created by Georgi Malkhasyan on 11/19/20.
//

import SwiftUI

struct PizzaHisotry: View {
    var body: some View {
        HStack{
            Image(systemName: "menubar.arrow.up.rectangle")
            Spacer()
            Text("Pizza History")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(height: 20.0)
        .padding()
        .background(Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)))
    }
}

struct PizzaHisotry_Previews: PreviewProvider {
    static var previews: some View {
        PizzaHisotry()
    }
}
