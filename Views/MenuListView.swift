//
//  MenuListView.swift
//  SwiftUITest
//
//  Created by Georgi Malkhasyan on 11/18/20.
//

import SwiftUI

struct MenuListView: View {
    @Binding var orderModel: OrderModel
    var menu = MenuModel().menu
    
    var body: some View {
        VStack{
            ListHeaderView(text: "Menu")
            NavigationView {
                List(menu) { item in
                    NavigationLink(destination: MenuDetailView(orderModel: self.$orderModel, menuItem:  item)){
                    MenuRowView(menu: item)
                        .listRowInsets(EdgeInsets())
                    }
                }
                .navigationBarTitle("Order Pizza")
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView(orderModel: Binding.constant(OrderModel()))
    }
}

struct MenuRowView: View {
    var menu: MenuItem?
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top, spacing: 15){
                Image("1_100w")
                    .clipShape(Capsule())
                    .cornerRadius(10).shadow(radius: 10)
                
                VStack(alignment: .leading){
                    Text("\(menu!.name)")
                        .font(.title)
                        .fontWeight(.light)
                    HStack() {
                        ForEach(0..<3){item in
                            Image(systemName: "star.circle")
                                .foregroundColor(Color.red)
                        }
                    }
                    Text("\(menu!.description)").font(.headline).padding()
                }
            }
        }
    }
}

struct ListHeaderView: View {
    var text: String
    var body: some View {
        HStack {
            Text(text)
                .padding(.leading,5)
                .foregroundColor(.white)
                .font(.headline)
            
            Spacer()
        }.padding([.top,.bottom]).background(Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)))
    }
}
