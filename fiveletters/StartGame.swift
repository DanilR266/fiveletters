//
//  StartGame.swift
//  fiveletters
//
//  Created by Данила on 17.11.2022.
//

import SwiftUI





struct Field: View {
    @EnvironmentObject var dm: Model
    var letter: String
    var color: Color = .white
    var body: some View {
        Text(letter)
                    .frame(width: 45, height: 54, alignment: .center)
                    .font(.system(size: 28, weight: .light, design: .default))
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color(.sRGB, red: 255/255, green: 234/255, blue: 45/255, opacity: 1), lineWidth: 5)
                )
            .background(color)
            .cornerRadius(3)
            .frame(width: 45, height: 54, alignment: .center)

    }
}


//struct StartGame_Previews: PreviewProvider {
//    static var previews: some View {
//        StartGame()
//            .environmentObject(Model())
//    }
//}
