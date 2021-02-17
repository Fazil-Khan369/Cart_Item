//
//  CartViewModel.swift
//  Mycart
//
//  Created by Fazil P on 11/01/21.
//

import SwiftUI

class CartViewModel: ObservableObject {
    
//     cart Items..
    
    @Published var data = [
    
        Item(name: "Tommy Hilfiger Men Olive Green Printed Round Neck T-shirt", details: "Olive Green - M", image: "Dress1", price: 25, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "ADIDAS Men Red Printed Arsenal 20/21 Home Jersey T-Shirt", details: "Red - S", image: "Dress2", price: 19, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Amazon Web Services Half Sleeve T-Shirt", details: "Black - M", image: "Dress3", price: 22, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Developer Half Sleeve Unisex T-Shirt", details: "Navy Blue - L", image: "Dress4", price: 35, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Git Hub Half Sleeve Unisex T-Shirt", details: "Black - M", image: "Dress5", price: 40, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Google Cloud Half Sleeve Unisex T-Shirt", details: "Black - L", image: "Dress6", price: 28, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "Puma Men White Printed Round Neck T-shirt", details: "Gray - XL", image: "Dress7", price: 33, quantity: 1, offset: 0, isSwiped: false),
        Item(name: "HRX by Hrithik Roshan Men Yellow Printed Round Neck T-Shirt", details: "Yellow - S", image: "Dress8", price: 31, quantity: 1, offset: 0, isSwiped: false),
    ]
}
