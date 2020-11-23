//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Georgi Malkhasyan on 11/15/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var isMenuDisplayed:Bool = true
    
    var body: some View {
        
        VStack{
            ContectHeaderView()
                .layoutPriority(1)
            Button(action: {self.isMenuDisplayed.toggle()}) {
                PizzaHisotry(title: "Order Pizza", isDisplayingOrders: $isMenuDisplayed).foregroundColor(.white)
            }
          
            MenuListView()
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
            OrderListView()
                .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      
            ContentView()
    }
}
