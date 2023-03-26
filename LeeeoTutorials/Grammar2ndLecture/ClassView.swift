//
//  ClassView.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/03/25.
//

import SwiftUI

struct PersonStruct {
    var name : String
    let age : Int
}

class PersonClass{
    var name : String
    let age : Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct ClassView: View {
    @State var nickname : String = "None"
    
    var body: some View {
        VStack{
            Text(nickname)
            Button {
                var leeo = PersonClass(name: "Leeo", age: 23)
                var fakeLeeo = leeo //주소값을 준거임, (같은 얘다)
                leeo.name = "Leeo2"
                fakeLeeo.name = "Leeo3" //leeo랑 fakeLeeo랑 같은 주소값의 값을 가리키고 있기에 nickname은 leeo.name이어도 "Leeo3"로 출력된다.
                nickname = leeo.name
            } label: {
                Text("Hit")
            }
        }
    }
}

struct ClassView_Previews: PreviewProvider {
    static var previews: some View {
        ClassView()
    }
}



// class는 공유할 수 있는 링크를 주는 반면에 struct는 복사된 값을 주는 것.
//
