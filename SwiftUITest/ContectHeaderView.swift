//
//  ContectHeaderView.swift
//  SwiftUITest
//
//  Created by Georgi Malkhasyan on 11/18/20.
//

import SwiftUI

struct ContectHeaderView: View {
    var body: some View {
        ZStack{
            Image(systemName: "heart.fill")
                .resizable()
                .scaledToFit()
            Text("Georgi Pizza Company")
                .font(.headline)
                .foregroundColor(.white)
        }
        
        
        Text("Order Pizza")
            .font(.largeTitle)
    }
}

struct ContectHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContectHeaderView()
    }
}
