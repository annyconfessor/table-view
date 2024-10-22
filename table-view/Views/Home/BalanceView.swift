//
//  BalanceView.swift
//  table-view
//
//  Created by Anny Caroliny on 22/10/24.
//

import SwiftUI

struct BalanceView: View {
    @Binding var stock: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "brazilianrealsign.square")
                Text("\(stock)").font(Font.custom("Poppins-Regular", size: 18))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
            Spacer()
                .frame(height: 30)
            VStack {
                Text("130499.2").font(Font.custom("Poppins-Bold", size: 24))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                Text("-0.22").font(Font.custom("Poppins-SemiBold", size: 15))
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .padding(.leading, 20)
            }
        }.foregroundColor(.white)
        .frame(maxWidth: 180, maxHeight: 160)
        .background(Color(hex: 0x009688))
//        .background(Color(hex: 0xff8367))
        .cornerRadius(20)
    }
}
