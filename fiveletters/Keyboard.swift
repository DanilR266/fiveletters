//
//  Keyboard.swift
//  fiveletters
//
//  Created by Данила on 19.11.2022.
//

import SwiftUI

struct Keyboard: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack(spacing: 6) {
                ButtonOnKB(letter: "Й")
                ButtonOnKB(letter: "Ц")
                ButtonOnKB(letter: "У")
                ButtonOnKB(letter: "К")
                ButtonOnKB(letter: "Е")
                ButtonOnKB(letter: "Н")
                HStack(spacing: 6) {
                    ButtonOnKB(letter: "Г")
                    ButtonOnKB(letter: "Ш")
                    ButtonOnKB(letter: "Щ")
                    ButtonOnKB(letter: "З")
                    ButtonOnKB(letter: "Х")
                    ButtonOnKB(letter: "Ъ")
                }
            }
            HStack {
                HStack(spacing: 6) {
                    ButtonOnKB(letter: "Ф")
                    ButtonOnKB(letter: "Ы")
                    ButtonOnKB(letter: "В")
                    ButtonOnKB(letter: "А")
                    ButtonOnKB(letter: "П")
                    ButtonOnKB(letter: "Р")
                    HStack(spacing: 6) {
                        ButtonOnKB(letter: "О")
                        ButtonOnKB(letter: "Л")
                        ButtonOnKB(letter: "Д")
                        ButtonOnKB(letter: "Ж")
                        ButtonOnKB(letter: "Э")
                        ButtonOnKB(letter: "Ё")
                    }
                }
            }
            HStack {
                HStack(spacing: 6) {
                    ButtonOK(letter: "OK!")
                    ButtonOnKB(letter: "Я")
                    ButtonOnKB(letter: "Ч")
                    ButtonOnKB(letter: "С")
                    ButtonOnKB(letter: "М")
                    ButtonOnKB(letter: "И")
                    ButtonOnKB(letter: "Т")
                    ButtonOnKB(letter: "Ь")
                    ButtonOnKB(letter: "Б")
                    HStack(spacing: 6) {
                        ButtonOnKB(letter: "Ю")
                        ButtonOnCancel(letter: "Del")
                        
                    }
                }
            }
        }
    }
}

struct ButtonOnKB:View {
    @EnvironmentObject var dm: Model
    
    var letter: String = "jn"
    var body: some View {
        
        Button(action: {
            if dm.count < 29 && dm.canWrite{
                dm.updateWord(letter: letter)
            }
            }) {
                Text(letter)
                    .frame(width: 27, height: 43, alignment: .center)
                    .font(.system(size: 28, weight: .light, design: .default))
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.black, lineWidth: 2)
                )
            }
            .background(Color.white) 
            .cornerRadius(3)
            .frame(width: 25, height: 40, alignment: .center)

    }
}

struct ButtonOnCancel: View {
    @EnvironmentObject var dm: Model
    var letter: String = "Back"
    var body: some View {
        Button(action: {
//            dm.gridOne[dm.count].letter = " "
            
            dm.deleteLetter()
            }) {
                Text(letter)
                    .frame(width: 42, height: 42, alignment: .center)
                    .font(.system(size: 18, weight: .light, design: .default))
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.black, lineWidth: 2)
                )
            }
            .background(Color.gray)
            .cornerRadius(3)
            .frame(width: 42, height: 42, alignment: .center)

    }
}
struct ButtonOK: View {
    @EnvironmentObject var dm: Model
    var letter: String = "OK!"
    var body: some View {
        Button(action: {
            dm.canWrite = true
            dm.checkWord()
            }) {
                Text(letter)
                    .frame(width: 42, height: 42, alignment: .center)
                    .font(.system(size: 18, weight: .light, design: .default))
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color.black, lineWidth: 2)
                )
            }
            .background(Color(.sRGB, red: 255/255, green: 234/255, blue: 45/255, opacity: 1))
            .cornerRadius(3)
            .frame(width: 42, height: 42, alignment: .center)

    }
}

struct Keyboard_Previews: PreviewProvider {
    static var previews: some View {
        Keyboard()
    }
}
