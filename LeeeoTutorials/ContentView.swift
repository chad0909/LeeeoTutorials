//
//  ContentView.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/03/24.
//

import SwiftUI
import CoreData


struct ContentView: View {


    
    @State var fruit : String? = "버튼을 눌러주세요"
    let fruitArray : [Fruits] = [.apple, .banana, .pineapple, .grapes]
    
    enum Fruits : String {
        case apple = "사과"
        case banana = "바나나"
        case pineapple = "파인애플"
        case grapes = "포도"
    }
    
    var body: some View {
        VStack{
            Text(fruit!)
            Button{
                fruit = fruitArray.randomElement()?.rawValue
            }label: {
                Text("Press")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
