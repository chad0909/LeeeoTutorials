//
//  EnumAfterView.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/03/25.
//

import SwiftUI

struct EnumAfterView: View {
    let myDrinks: Drink = .soft(color: .orange)
    var body: some View {
        VStack{
            Text(myDrinks.name)
        }
    }
}

struct EnumAfterView_Previews: PreviewProvider {
    static var previews: some View {
        EnumAfterView()
    }
}


enum Drink{
    case coffee(hasMilk: Bool)
    case juice
    case soft(color: Color)
    
    var name : String{
        switch self {
        case .coffee(hasMilk: let hasMilk):
            if hasMilk{
                return "Latte"
            }else{
                return "Americano"
            }
        case .juice:
            return "Juice"
        
        case .soft(color: let drinkColor):
            switch drinkColor{
            case .orange:
                return "환타"
            case .black:
                return "콜라"
            default:
                return "음료"
            }
        }
        
    }
    
    
}
