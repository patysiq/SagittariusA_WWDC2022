//
//  File.swift
//  SagittariusA
//
//  Created by PATRICIA S SIQUEIRA on 24/04/22.
//

import SwiftUI

struct MyView: View {
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Text(information.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding()

                Image(information.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding(20)
                
                Text(information.apresentation)
                    .font(.body)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(10)
                
                Text(information.story)
                    .font(.body)
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}
