//
//  CartView.swift
//  Mycart
//
//  Created by Fazil P on 11/01/21.
//

import SwiftUI

struct CartView: View {
    
    @StateObject var cartData = CartViewModel()
    var body: some View {
        
        VStack {
            
            HStack(spacing: 20) {
                
                Button(action: {}) {
                    
                    Image(systemName: "chevron.left")
                        .font(.system(size: 26, weight: .heavy))
                        .foregroundColor(.black)
                }
                
                Text("My cart")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                
                Spacer()
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                LazyVStack(spacing: 0) {
                    
                    ForEach(cartData.data){ item in
                        
//                        ItemView
                        
                        ItemView(item: $cartData.data[getIndex(item: item)],items: $cartData.data)
                    }
                }
            }
            
//            Bottom View total price
            
            VStack {
                
                HStack {
                    
                    Text("Total")
                        .fontWeight(.heavy)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
//          Calculate total price quantity
                    Text(totalPrice())
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                }
                .padding([.top, .horizontal])
                
                Button(action: {}) {
                    
                    Text("Place order")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 30)
                        .background(
                            
                            LinearGradient(gradient: .init(colors: [Color("lightblue"),Color("blue")]), startPoint: .leading, endPoint: .trailing)
                        )
                        .cornerRadius(15)
                }
            }
            .background(Color.white)
            
        }
        .background(Color("gray").ignoresSafeArea())
    }
    
    func getIndex(item: Item) -> Int {
        
        return cartData.data.firstIndex { (item1) -> Bool in
            return item.id == item1.id
        } ?? 0
    }
    
    func totalPrice() -> String {
        
        var price: Float = 0
        
        cartData.data.forEach { (item) in
            price += Float(item.quantity) * item.price
        }
        return getPrice(value: price)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
