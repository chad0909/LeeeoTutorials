//
//  ModalView.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/03/25.
//

import SwiftUI

struct ModalView: View {
    @State var isShowingModal : Bool = false
    
    var body: some View {
        Button {
            isShowingModal = true
        } label: {
            Text("Call Modal")
        }
        .fullScreenCover(isPresented: $isShowingModal){
            ZStack{
                Color.orange.ignoresSafeArea()
                VStack{
                    Text("Modal View")
                    Button {
                        isShowingModal = false
                    } label: {
                        Text("Dismiss")
                    }

                }
            }
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
