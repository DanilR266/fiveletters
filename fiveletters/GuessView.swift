//
//  GuessView.swift
//  fiveletters
//
//  Created by Данила on 25.11.2022.
//

import SwiftUI

struct GuessView: View {
    @EnvironmentObject var dm: Model
    var mainW: String = ""
    var phrase: String = ""
    var body: some View {
        ZStack {
            Color(.sRGB, red: 244/255, green: 242/255, blue: 242/255, opacity: 1)
            VStack {
                Text(phrase)
                    .foregroundColor(.black)
                    .font(.system(size: 24, weight: .regular, design: .default))
                    .frame(width: 300, height: 71, alignment: .center)
                    .multilineTextAlignment(.center)
                Button {
                    
                } label: {
                    Text(mainW)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .font(.system(size: 28, weight: .bold, design: .default))
                        .padding()
                        .foregroundColor(.black)
                }.background(Color(.sRGB, red: 255/255, green: 234/255, blue: 45/255, opacity: 1)) // If you have this
                    .cornerRadius(15)
                    .frame(width: 252, height: 54, alignment: .center)
                    .disabled(true)
                    .padding(.bottom, 70)
                Button {
                    print(dm.word)
                } label: {
                    Text("Новое слово")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .font(.system(size: 28, weight: .bold, design: .default))
                        .padding()
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.black, lineWidth: 3)
                    )
                }.background(Color.white) // If you have this
                    .cornerRadius(15)
                    .frame(width: 252, height: 54, alignment: .center)
                    .padding(.bottom, 30)
                        
                Button(action: {
                        print("sign up bin tapped2")
                    }) {
                        Text("Меню")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .font(.system(size: 28, weight: .bold, design: .default))
                            .padding()
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.black, lineWidth: 3)
                        )
                    }
                    .background(Color.white) // If you have this
                    .cornerRadius(15)
                    .frame(width: 252, height: 54, alignment: .center)
            }
        }.frame(width: 350, height: 740, alignment: .center)
            .cornerRadius(15)
    }
}

struct GuessView_Previews: PreviewProvider {
    static var previews: some View {
        GuessView()
    }
}
