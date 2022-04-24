//
//  File.swift
//  SagittariusA
//
//  Created by PATRICIA S SIQUEIRA on 23/04/22.
//
import SwiftUI

struct SagittariusA: View {
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
                VStack(spacing: 10){
                    Text(information.nameSag)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 10)
                    
                    Image(information.imageBlackHole)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                        .padding(10)
                    
                    Text(information.apresentationSag[0])
                        .font(.body)
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 10)
                    
                    Text(information.apresentationSag[1])
                        .font(.body)
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 10)
                    
                    Text(information.apresentationSag[2])
                        .font(.body)
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 40)
                        .alignmentGuide(.bottom) { d in d[.bottom] }
                }
                
        }
    }
}

struct SagittariusA_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
