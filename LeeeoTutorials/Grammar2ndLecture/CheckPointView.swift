//
//  CheckPointView.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/03/25.
//

import SwiftUI

struct Friend{
    var name : String
    var pet : MyPet?
}

enum MyPet{
    case cat(String)
    case dog(String)
}

struct CheckPointView: View {
    var pepe : Friend = Friend(name: "pepe", pet: MyPet.dog("coco"))
    var mimi : Friend = Friend(name: "mimi", pet: MyPet.cat("titi2"))
    
    @State var pet : String = "제 절친의 애완동물은요?"
    
    var body: some View {
        VStack{
            Text(pet)
            Button {
                if let petName = mimi.pet{
                    pet = getPetName(petName)
                }else{
                    pet = "애완동물이 없습니다."
                }
            } label: {
                Text("PUSH")
            }

        }
        
    }
    func getPetName(_ petName : MyPet) -> String {
        switch petName{
        case .dog(let nickName):
            return nickName
        case .cat(let nickName):
            return nickName
        }
    }
    
    
}

struct CheckPointView_Previews: PreviewProvider {
    static var previews: some View {
        CheckPointView()
    }
}
