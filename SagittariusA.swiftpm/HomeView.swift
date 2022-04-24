//
//  File.swift
//  SagittariusA
//
//  Created by PATRICIA S SIQUEIRA on 23/04/22.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Text(information.nameKatie)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 10)

                Image(information.imageKatie)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding(20)
                
                Text(information.apresentatioKatie[0])
                    .font(.body)
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(10)
                
                Text(information.apresentatioKatie[1])
                    .font(.body)
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
