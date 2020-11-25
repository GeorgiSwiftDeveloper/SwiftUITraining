//
//  OrderListView.swift
//  SwiftUITest
//
//  Created by Georgi Malkhasyan on 11/18/20.
//

import SwiftUI

struct OrderListView: View {
    
    var orderModel: OrderModel
    
    var body: some View {
        VStack {
            ListHeaderView(text: "Your Order")
            List(orderModel.orders) { item in
                OrderRowView(orderItem: item)
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}

struct OrderRowView: View {
    
    var orderItem: OrderItem
    
    
    var body: some View {
        HStack{
            Text(orderItem.description)
                .fontWeight(.bold)
            Spacer()
            Text(orderItem.formattedExtendedPrice)
        }
    }
}
