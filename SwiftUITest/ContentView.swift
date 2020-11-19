//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Georgi Malkhasyan on 11/15/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            ContectHeaderView()
                .layoutPriority(1)
            MenuListView()
                .layoutPriority(1)
            OrderListView()
                .layoutPriority(1)
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
