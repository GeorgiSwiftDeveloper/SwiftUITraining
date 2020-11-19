//
//  MenuListView.swift
//  SwiftUITest
//
//  Created by Georgi Malkhasyan on 11/18/20.
//

import SwiftUI

struct MenuListView: View {
    var body: some View {
        VStack{
            ListHeaderView(text: "Menu")
            List(0..<7) { item in
                MenuRowView()
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}

struct MenuRowView: View {
    var body: some View {
        HStack{
            Image("1_100w")
                .clipShape(Capsule())
                .cornerRadius(10).shadow(radius: 10)
            VStack{
                Text("Huli Chicken Pizza")
                    .font(.title)
                    .fontWeight(.light)
                HStack() {
                    ForEach(0..<3){item in
                        Image(systemName: "star.circle")
                            .foregroundColor(Color.red)
                    }
                }
                
            }
            Spacer()
        }
    }
}

struct ListHeaderView: View {
    var text: String
    var body: some View {
        HStack {
            Text(text)
                .padding(.leading,5)
                .foregroundColor(.red)
            
            
            Spacer()
        }.background(Color(.blue))
    }
}
