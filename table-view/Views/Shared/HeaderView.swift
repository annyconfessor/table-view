//
//  Header.swift
//  table-view
//
//  Created by Anny Caroliny on 22/10/24.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        HStack() {
            VStack(alignment: .leading) {
                Text("Good morning").font(Font.custom("Poppins-SemiBold", size: 24))
                Text("Anny").font(Font.custom("Poppins-Medium", size: 22))
            }
            .padding(.leading, 10)
            Spacer()
            Image("baby-yoda")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 50, height: 50, alignment: .center)
                .clipped()
                .clipShape(Circle())
        }
        .font(Font.custom("Poppins-Medium", size: 20))
        .frame(width: 320, height: 100)
    }
}

#Preview {
    HeaderView()
}
