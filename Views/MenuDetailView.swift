//
//  MenuDetailView.swift
//  SwiftUITest
//
//  Created by Georgi Malkhasyan on 11/23/20.
//

import SwiftUI

struct MenuDetailView: View {
    var selectedPizza: MenuItem
    
    var body: some View {
        VStack {
            SelectedListView(selectedPizza: selectedPizza)
        }
    }
}

struct MenuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MenuDetailView(selectedPizza:MenuModel().testMenuItem )
    }
}

struct SelectedListView: View {
    
    var selectedPizza: MenuItem
    
    var body: some View {
        HStack{
            Spacer()
            Text(selectedPizza.name).font(.headline).foregroundColor(.white)
        }
        .padding(.all)
        .background(Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)))
    }
}
