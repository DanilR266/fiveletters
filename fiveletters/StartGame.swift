//
//  StartGame.swift
//  fiveletters
//
//  Created by Данила on 17.11.2022.
//

import SwiftUI


struct StartGame: View {
    @Binding var letter: String
    var body: some View {
        ZStack {
            VStack {
                Text(letter)
                Keyboard()
            }
        }
    }
}


struct Field:View {
    var letter: String
    var body: some View {
        Button(action: {
                print("sign up bin tapped2")
            }) {
                Text(letter)
                    .frame(width: 27, height: 43, alignment: .center)
                    .font(.system(size: 28, weight: .light, design: .default))
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.yellow, lineWidth: 2)
                )
            }
            .background(Color.white) // If you have this
            .cornerRadius(3)
            .frame(width: 25, height: 40, alignment: .center)

    }
}


//struct StartGame_Previews: PreviewProvider {
//    static var previews: some View {
//        StartGame()
//    }
//}
