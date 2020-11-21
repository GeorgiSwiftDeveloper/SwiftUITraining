//
//  PizzaHisotry.swift
//  SwiftUITest
//
//  Created by Georgi Malkhasyan on 11/19/20.
//

import SwiftUI

struct PizzaHisotry: View {
    var title: String
    @Binding var isDisplayingOrders: Bool
    
    var body: some View {
        HStack{
            Image(systemName: isDisplayingOrders ?? false ? "chevron.up.square": "chevron.down.square")
            Spacer()
            Text(title)
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
        PizzaHisotry(title: "Orrder Pizza", isDisplayingOrders: Binding.constant(false))
    }
}
