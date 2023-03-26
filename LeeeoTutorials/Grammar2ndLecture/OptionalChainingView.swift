//
//  OptionalChainingView.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/03/25.
//

import SwiftUI

struct Student{
    let name : String
    let pet : Pet?
}

struct Pet {
    let name : String
    let age : Int
}

struct OptionalChainingView: View {
    
    let leeo = Student(name: "L225", pet: Pet(name: "pipi", age: 2))
    
    
    var body: some View {
        VStack{
            Text(leeo.name)
            
            // leeo.pet?.name == 이 부분은 OptionalChaining
            // if let petName = leeo.pet?.name{
            //  Text(petName)
            // } == 이 부분이 OptionalBinding
            
            if let petName = leeo.pet?.name{
                Text(petName)
            }
        }
    }
}

struct OptionalChainingView_Previews: PreviewProvider {
    static var previews: some View {
        OptionalChainingView()
    }
}
