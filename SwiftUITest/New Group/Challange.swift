//
//  Challange.swift
//  SwiftUITest
//
//  Created by Georgi Malkhasyan on 11/19/20.
//

import SwiftUI

struct Challange: View {
    var body: some View {
        
        VStack{
            ContectHeaderView()
                .layoutPriority(1)
            PizzaHisotry()
                .layoutPriority(1)
            PizzaImageView()
                .layoutPriority(1)
            MenuPizzaList()
            Spacer()
        }
    
    }
}

struct Challange_Previews: PreviewProvider {
    static var previews: some View {
        Challange()
    }
}
