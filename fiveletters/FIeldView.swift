//
//  FIeldView.swift
//  fiveletters
//
//  Created by Данила on 24.11.2022.
//

import SwiftUI

struct FIeldView: View {
    @EnvironmentObject var dm: Model
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                ForEach((0...4), id: \.self) {
                    dm.gridOne[$0]
                        .padding(.all, 10)
                }
            }
            HStack {
                ForEach((0...4), id: \.self) {
                    dm.gridTwo[$0]
                        .padding(.all, 10)
                }
            }
            HStack {
                ForEach((0...4), id: \.self) {
                    dm.gridThree[$0]
                        .padding(.all, 10)
                }
            }
            HStack {
                ForEach((0...4), id: \.self) {
                    dm.gridFour[$0]
                        .padding(.all, 10)
                }
            }
            HStack {
                ForEach((0...4), id: \.self) {
                    dm.gridFive[$0]
                        .padding(.all, 10)
                }
            }
            HStack {
                ForEach((0...4), id: \.self) {
                    dm.gridSix[$0]
                        .padding(.all, 10)
                }
            }
        }
    }
}

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

struct FIeldView_Previews: PreviewProvider {
    static var previews: some View {
        FIeldView()
            .environmentObject(Model())
    }
}
