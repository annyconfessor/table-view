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
            Image("baby-yoda")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 50, height: 50, alignment: .center)
                .clipped()
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text("Good morning,").font(.system(size: 20))
                Text("Anny").font(.system(size: 24))
            }
            .padding(.leading, 10)
            Spacer()
            Image(systemName: "bell.badge")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 24, height: 24)
                .padding(.horizontal, 10)
        }
        .font(Font.custom("Poppins-Medium", size: 20))
        .frame(width: 350, height: 100)
    }
}

#Preview {
    HeaderView()
}
