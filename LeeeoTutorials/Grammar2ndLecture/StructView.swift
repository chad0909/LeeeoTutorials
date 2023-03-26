//
//  StructView.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/03/25.
//

import SwiftUI

struct UserInfo{
    let name: String
    let email : String
    let age : Int
}

struct StructView: View {
    var userinfo : UserInfo
    
    //구조체를 사용함으로써 info의 출처를 명확히 알 수 있음 (데이터의 양이 많아지면 유용함)
    var body: some View {
        VStack{
            Text(userinfo.name)
            Text(userinfo.email)
            Text(userinfo.age.description)
        }
    }
}

struct StructView_Previews: PreviewProvider {
    static var previews: some View {
        StructView(userinfo: UserInfo(name: "Chad", email: "chad@naver.com", age: 20))
    }
}
