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
            Text("Menu")
            List(0..<7) { item in
                HStack{
                    Image(systemName: "heart.fill")
                    VStack{
                    Text("Huli Chicken Pizza")
                        HStack {
                            ForEach(0..<3){item in
                                Image(systemName: "heart.fill")
                            }
                        }
                       
                    }
                    Spacer()
                }
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}
