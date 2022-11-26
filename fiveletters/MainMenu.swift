//
//  ContentView.swift
//  fiveletters
//
//  Created by Данила on 17.11.2022.
//

import SwiftUI


struct AppContentView: View {
    @EnvironmentObject var dm: Model
    @State var signInSuccess = false
    
    var body: some View {
        return Group {
            if signInSuccess {
                StartGame()
                    .environmentObject(Model())
            }
            else {
                MainMenu(signInSuccess: $signInSuccess)
            }
        }
    }
}

struct MainMenu: View {
    @EnvironmentObject var dm: Model
    @State private var firstViewIsOn = false
    @State private var tagSelection: String? = nil
    @Binding var signInSuccess: Bool
    var body: some View {
        ZStack {
            CircleImage()
            VStack(spacing: 203) {
                Text("Привет! Это уркаденная у Тинькофф игра “5 букв”")
                    .fontWeight(.regular)
                    .font(.system(size: 28))
                    .multilineTextAlignment(.center)
                VStack(spacing: 58) {
                    Button {
                        self.signInSuccess = true
//                        dm.getword()
                    } label: {
                        Text("Играть")
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
                            
                    Button(action: {
                            print("sign up bin tapped2")
                        }) {
                            Text("Правила")
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
                .padding(.bottom, 260)

            }
            
            
        }

    }
}

struct CircleImage: View {
    var body: some View {
        Image("Subtract")
            .resizable()
            .frame(width: 91, height: 242, alignment: .leading)
            .clipped()
            .offset(x: 150, y: -200)
        Image("Subtract-2")
            .resizable()
            .frame(width: 152, height: 252, alignment: .leading)
            .clipped()
            .offset(x: -119, y: -120)
        Image("Subtract-3")
            .resizable()
            .frame(width: 94, height: 243, alignment: .leading)
            .clipped()
            .offset(x: -150, y: 240)
        Image("Subtract-4")
            .resizable()
            .frame(width: 179, height: 252, alignment: .leading)
            .clipped()
            .offset(x: 107, y: 220)
    }
}


struct StartGame: View {
    var letter: String = ""
    @EnvironmentObject var dm: Model
    var body: some View {
        ZStack {
            VStack {
                Text("Введите слово")
                FIeldView()
                Spacer()
                Keyboard()
                Spacer()
            }
            if dm.showingCredits {
                withAnimation {
                    GuessView(mainW: dm.mainWord, phrase: "Поздравляю, ты угадал слово")
                        .environmentObject(Model())
                }
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainMenu()
//            .environmentObject(Model())
//    }
//}
