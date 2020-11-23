//
//  ContectHeaderView.swift
//  SwiftUITest
//
//  Created by Georgi Malkhasyan on 11/18/20.
//

import SwiftUI

struct ContectHeaderView: View {
    var body: some View {
        VStack {
            ZStack{
                Image("Surf Board")
                    .resizable()
                    .scaledToFit()
                Text("Georgi Pizza Company")
                    .font(.headline)
                    .foregroundColor(.white)
            }
        }
    }
}

struct ContectHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContectHeaderView()
    }
}

struct PageTitleView: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .fontWeight(.light)
    }
}
