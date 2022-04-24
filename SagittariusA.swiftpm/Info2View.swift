//
//  File.swift
//  SagittariusA
//
//  Created by PATRICIA S SIQUEIRA on 23/04/22.
//

import SwiftUI

struct Info2View: View {
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Text(doIt.title2)
                    .font(.title)
                    .fontWeight(.bold)
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(Color.white)
                    .padding(10)

                Text(doIt.apresentation2[0])
                    .font(.body)
                    .lineLimit(nil)
                    .foregroundColor(Color.white)
                    .padding(10)
                
                Text(doIt.apresentation2[1])
                    .font(.body)
                    .lineLimit(nil)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
            }
        }
    }
}

struct Info2View_Previews: PreviewProvider {
    static var previews: some View {
        Info2View()
    }
}
