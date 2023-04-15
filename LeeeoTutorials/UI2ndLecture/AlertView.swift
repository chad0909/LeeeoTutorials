//
//  AlertView.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/03/25.
//

import SwiftUI

struct AlertView: View {
    
    @State var isShowingAlert : Bool = false
    
    var body: some View {
        Button {
            isShowingAlert = true
        } label: {
            Text("Show Alert")
        }
        //그냥 완전 기본 틀
//        .alert(isPresented: $isShowingAlert){
//            Alert(title: Text("hi"))
//        }
        //기본적인 OK버튼이 하나있는 예시
        //        .alert(isPresented: $isShowingAlert) {
        //            Alert(title: Text("This is alert"),
        //            message: Text("MESSAGE"),
        //                  dismissButton: .default(Text("Leeeo!")))
        //        }
        //      OK 와 Cancel이 있는 버튼
        //        .alert(isPresented: $isShowingAlert) {
        //            Alert(title: Text("This is Alert"), primaryButton: .default(Text("OK")), secondaryButton: .cancel())
        //두 개 다 default면 primary가 왼쪽, secondary가 오른쪽이지만 하나라도 .cancel()이 있다면 무조건 cancel이 좌측.

        
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}

