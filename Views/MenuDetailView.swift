//
//  MenuDetailView.swift
//  SwiftUITest
//
//  Created by Georgi Malkhasyan on 11/23/20.
//

import SwiftUI

struct MenuDetailView: View {
    @Binding var orderModel: OrderModel
    var menuItem: MenuItem
    
    var body: some View {
        VStack {
            SelectedListView(orderModel: orderModel, menuItem: menuItem)
        }
    }
}

struct MenuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MenuDetailView(orderModel: Binding.constant(OrderModel()), menuItem: MenuModel().menu[0] )
    }
}

struct SelectedListView: View {
    var orderModel: OrderModel
    var menuItem: MenuItem
    
    var formattedPrice: String {
        String(format: "%3.2f", menuItem.price)
    }
    
    func addItem(){
        orderModel.add(menuID: menuItem.id)
    }
    var body: some View {
        VStack{
            SelectedPizzaName(selectedPizza: menuItem)
            SelectedImage()
            
            Text(menuItem.description).font(.title)
            HStack() {
                Spacer()
                Text("Pizza size:").font(.headline).bold().padding()
            }
            HStack() {
                
                Text("Quantity:").font(.headline).bold().padding()
                
                Spacer()
            }
            
            HStack {
                Text("Order: \(formattedPrice)").font(.headline).bold().padding()
                Spacer()
                Text("Order total:" + orderModel.formattedTotal).font(.headline).bold().padding()
            }
            
            VStack{
                
                Button(action: {
                    print("Hello button tapped!")
                }) {
                    Text("Add to order")
                        .font(.headline)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)))
                    
                    
                }
            }
            
        }
        Spacer()
        
    }
}

struct SelectedImage: View {
    var body: some View {
        Image("1_100w").resizable().scaledToFit().cornerRadius(10.0).padding().shadow(radius: 4).shadow(color: .black, radius: 10)
    }
}

struct SelectedPizzaName: View {
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
