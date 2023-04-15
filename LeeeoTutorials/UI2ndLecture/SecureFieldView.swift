//
//  SecureFieldView.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/04/15.
//

import SwiftUI

struct SecureFieldView: View {
    
    @State var myPassword : String = ""
    @State var isSecureMode : Bool = true
    
    var body: some View {
        VStack{
            Text(myPassword)
            HStack{
                if isSecureMode{
                    SecureField("Password", text: $myPassword)
                        .textFieldStyle(.roundedBorder)
                }else{
                    TextField("Password", text: $myPassword)
                        .textFieldStyle(.roundedBorder)
                }
                
                Button{
                    isSecureMode.toggle()
                } label: {
                    Image(systemName: "eye")
                }
                
            }
        }
        
    }
}

struct SecureFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldView()
    }
}
