//
//  File.swift
//  SagittariusA
//
//  Created by PATRICIA S SIQUEIRA on 23/04/22.
//

import SwiftUI

struct Info1View: View {
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Text(doIt.title1)
                    .font(.title)
                    .fontWeight(.bold)
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(Color.white)
                    .padding(10)

                Text(doIt.apresentation1[0])
                    .font(.body)
                    .lineLimit(nil)
                    .foregroundColor(Color.white)
                    .padding(10)
                
                Text(doIt.apresentation1[1])
                    .font(.body)
                    .lineLimit(nil)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 40)
            }
        }
    }
}

struct Info1View_Previews: PreviewProvider {
    static var previews: some View {
        Info1View()
    }
}
