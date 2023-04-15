//
//  TextfieldView.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/04/15.
//

import SwiftUI

struct TextFieldView: View {
    
    @State var userID : String = ""
    
    var body: some View {
        VStack(alignment: .leading){
            Text("ID")
            TextField("Enter your ID", text: $userID)
                .textFieldStyle(.roundedBorder)
        }
        .padding()
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
