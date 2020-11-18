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
            MenuListView()
            OrderListView()
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
