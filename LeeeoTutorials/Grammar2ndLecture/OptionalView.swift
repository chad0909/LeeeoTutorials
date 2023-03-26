//
//  OptionalView.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/03/25.
//

import SwiftUI

struct OptionalView: View {
    
    var fruit : String = "Fruit"
    var food : String? = "Food"
    
    var body: some View {
        VStack{
            Text(fruit)
            //1안
            if let food = food{
                Text(food)
            }
            //2안
            Text(food ?? "nil")
            
            //3안
            Text(food!)
          }
    }
}
struct OptionalView_Previews: PreviewProvider {
    static var previews: some View {
        OptionalView()
    }
}



// OptionalBinding 포함 (guard let은 설명 아직 안해주심)
// Binding인 이유는 원래 외부 라이브러리를 네이티브에서 사용할 때 사용 할 수 있게끔 만드는 코드를 글루 코드라고 한다. 결합해서 사용할 수 있게끔 만드는 것인데, 이와 동일하게 Optional을 사용할 수 있게끔 만드는 것을 OptionalBinding이라고 생각하면 된다.
