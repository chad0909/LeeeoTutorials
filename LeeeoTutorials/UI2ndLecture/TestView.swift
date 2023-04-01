//
//  TestView.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/03/28.
//

import SwiftUI

struct TestView: View {
    let fruits = ["Apple", "Banana", "Orange", "Mango", "asdasd", "asdasd", "asdasd", "asdasd", "asdasd", "asdasd", "asdasd", "asdasd", "asdasd", "asdasd", "asdasd", "asdasd", "asdasd", "asdasd"]
    var body: some View {
        VStack {
            Text("My Favorite Fruits")
                .font(.title)
                .padding()

            ForEach(fruits, id: \.self) { fruit in
                Text(fruit)
                    .padding()
            }

        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}





