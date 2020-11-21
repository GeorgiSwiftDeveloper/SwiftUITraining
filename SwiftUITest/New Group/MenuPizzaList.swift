//
//  MenuPizzaList.swift
//  SwiftUITest
//
//  Created by Georgi Malkhasyan on 11/19/20.
//

import SwiftUI

struct MenuPizzaList: View {
    var body: some View {
        HStack{
            List(0..<7) { item in
            Image("1_100w")
                .clipShape(Circle())
                .cornerRadius(10).shadow(radius: 10)
            
            Text("Huli Chicken")
                .font(.title)
                .fontWeight(.medium)
            
            Spacer()
            
            Image(systemName: "menubar.arrow.up.rectangle").foregroundColor(.green)
        }
        }
    }
}

struct MenuPizzaList_Previews: PreviewProvider {
    static var previews: some View {
        MenuPizzaList()
    }
}
