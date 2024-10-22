//
//  BalanceView.swift
//  table-view
//
//  Created by Anny Caroliny on 22/10/24.
//

import SwiftUI

struct BalanceView: View {
    var body: some View {
        
        ZStack() {
            Image("mesh-gradient")
                .resizable()
                .scaledToFit()
                .edgesIgnoringSafeArea(.top)
            Image("blur")
                .resizable()
                .scaledToFit()
                .edgesIgnoringSafeArea(.top)
            
            VStack(alignment: .leading) {
                Text("Current Balance").font(Font.custom("Poppins-Regular", size: 18))
                HStack() {
                    Text("$87,430.12").font(Font.custom("Poppins-Bold", size: 22))
                    Text("10.2%").font(Font.custom("Poppins-SemiBold", size: 14))
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).padding()
        }.frame(width: 300, height: 100)
    }
}

#Preview {
    BalanceView()
}
