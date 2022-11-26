//
//  FiveLetterModel.swift
//  fiveletters
//
//  Created by Данила on 24.11.2022.
//

import Foundation

class Model: ObservableObject {
    @Published var showingCredits: Bool = false
    @Published var notGuess: Bool = false
    @Published var letter1: String = ""
    @Published var mainWord: String = ""
    var word: String = ""
    @Published var count: Int = -1
    @Published var canWrite: Bool = true
    var gridOne = Array(repeating: Field(letter: " "), count: 5)
    var gridTwo = Array(repeating: Field(letter: " "), count: 5)
    var gridThree = Array(repeating: Field(letter: " "), count: 5)
    var gridFour = Array(repeating: Field(letter: " "), count: 5)
    var gridFive = Array(repeating: Field(letter: " "), count: 5)
    var gridSix = Array(repeating: Field(letter: " "), count: 5)
    
    func updateWord(letter: String) {
        print(wordGuess, "wordguess")
        letter1 = letter
        word += letter
        count += 1
        if count == 4 || count == 9 || count == 14 || count == 19 || count == 24 {
            canWrite = false
        }
        switch count {
        case 0...4:
            gridOne[count].letter = letter1
        case 5...9:
            gridTwo[count-5].letter = letter1
        case 10...14:
            gridThree[count-10].letter = letter1
        case 15...19:
            gridFour[count-15].letter = letter1
        case 20...24:
            gridFive[count-20].letter = letter1
        case 25...29:
            gridSix[count-25].letter = letter1
        default:
            print("?")
        }
        print(count)
    }
    
    func deleteLetter() {
        switch count {
        case 0...4:
            gridOne[count].letter = " "
        case 5...9:
            gridTwo[count-5].letter = " "
        case 10...14:
            gridThree[count-10].letter = " "
        case 15...19:
            gridFour[count-15].letter = " "
        case 20...24:
            gridFive[count-20].letter = " "
        case 25...29:
            gridSix[count-25].letter = " "
        default:
            print("?")
        }
        count -= 1
        word.removeLast()
        if !canWrite {
            canWrite = true
        }
    }
    
    func checkWord() {
        
        if word.uppercased() == wordGuess.uppercased() {
            print("Слово \(word) угадано")
            showingCredits = true
        }
        
        canWrite = true
        var containsLetters: Array<Int> = []
        let main = Array(wordGuess)
        let check = Array(word)
        print(main, check)
        for i in 0..<check.count {
            if main.contains(check[i]) {
                containsLetters.append(i)
            }
        }
        word = ""
        print("совпадающих букв:", containsLetters)
        print(count)
        switch count {
        case 4:
            checkLetterInField(gridOne: &gridOne, main: main)
        case 9:
            checkLetterInField(gridOne: &gridTwo, main: main)
        case 14:
            checkLetterInField(gridOne: &gridThree, main: main)
        case 19:
            checkLetterInField(gridOne: &gridFour, main: main)
        case 24:
            checkLetterInField(gridOne: &gridFive, main: main)
        case 29:
            checkLetterInField(gridOne: &gridSix, main: main)
        default:
            print("?")
        }
    }
    
    func checkLetterInField( gridOne: inout Array<Field>, main: Array<Character>) {
        for i in 0..<gridOne.count {
            if !main.contains(Character(gridOne[i].letter)) {
                gridOne[i].color = .gray
            }
            if gridOne[i].letter == String(main[i]) {
                gridOne[i].color = .yellow
            }
        }
    }
    
    func startGame() {
        count = -1
    }
    
    
    
    
    @Published var wordGuess: String = ["время","жизнь","слово","место","конец","часть","город","земля","право","дверь","образ","закон","война","голос","книга","число","народ","форма","связь","улица","вечер","мысль","месяц","школа","театр","рубль","смысл","орган","рынок","семья","центр","ответ","автор","стена","совет","глава","наука","плечо","точка","палец","номер","метод","фильм","гость","кровь","район","армия","класс","герой","спина","сцена","берег","фирма","завод","песня","роман","стихи","повод","успех","выход","текст","пункт","линия","среда","волос","ветер","огонь","грудь","страх","сумма","сфера","мужик","немец","выбор","масса","слава","кухня","отдел","товар","актер","слеза","вывод","норма","рамка","прием","режим","целое","вирус","поиск","налог","доход","карта","акция","сосед","фраза","толпа","схема","волна","птица","запах","водка","поезд","адрес","лидер","стиль","весна","эпоха","запад","тайна","трава","фронт","музей","князь","сутки","судья","крыша","поток","честь","еврей","сотня","дождь","труба","осень","пьеса","черта","кусок","билет","масло","экран","канал","вагон","дурак","сезон","запас","длина","крыло","округ","доска","полет","пакет","живот","смена","порог","буква","лодка","серия","шутка","кулак","нефть","цифра","сапог","жилье","мешок","отказ","замок","диван","добро","покой","кость","спорт","майор","отдых","ручка","мечта","сюжет","рубеж","крест","взрыв","почва","заказ","штука","сумка","хвост","песок","озеро","строй","дочка","танец","набор","горло","плата"].randomElement()!.uppercased()
}
