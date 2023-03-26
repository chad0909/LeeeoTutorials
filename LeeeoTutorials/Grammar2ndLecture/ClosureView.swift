//
//  ClosureView.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/03/25.
//

import SwiftUI

struct ClosureView: View {
    
    //파라미터, 리턴 X
    let closure = { () -> () in
        print("Closure")
    }
    
    //파라미터, 리턴 O
    let closure2 = { (name: String) -> String in
        return "Hello, \(name)"
    }
    
    //파라미터, 리턴 생략
    let closure3 = {
        print("Closure3")
    }
    
    var body: some View {
        VStack{
            Text("\(closure2("Chad"))")
            
            Button {
                closure()
            } label: {
                Text("Closure")
            }

            Button {
                closure3()
            } label: {
                Text("Closure3")
            }
        }
    }
}

struct ClosureView_Previews: PreviewProvider {
    static var previews: some View {
        ClosureView()
    }
}


//- Named Closure와 Unnamed Closure로 나뉨
//- Named 는 우리가 흔히 아는 “함수”, Unnamed는 Closure를 뜻한다 보면 됨
