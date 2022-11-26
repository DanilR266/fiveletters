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

struct FIeldView_Previews: PreviewProvider {
    static var previews: some View {
        FIeldView()
            .environmentObject(Model())
    }
}
