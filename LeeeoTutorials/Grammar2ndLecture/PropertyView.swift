//
//  PropertyView.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/03/25.
//

import SwiftUI

struct PropertyView: View {
    
    @State var koreanMoney : Int = 1000
    var japaneseMoney : Int {
        get{
            return koreanMoney/10
        }
    }
    var body: some View {
        VStack{
            Text("\(koreanMoney.description)원 있습니다")
            Text("\(japaneseMoney.description)원 있습니다")
            Button {
                koreanMoney = 200
            } label: {
                Text("Press")
            }

        }
    }
}

struct PropertyView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyView()
    }
}
