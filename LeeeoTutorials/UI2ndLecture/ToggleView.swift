//
//  ToggleView.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/04/15.
//

import SwiftUI

struct ToggleView: View {
    @State var isLightOn:Bool = false
    
    var body: some View {
        Toggle(isOn: $isLightOn) {
            if isLightOn{
                Text("LightOn")
            }else{
                Text("LightOff")
            }
        }
        //automatic은 userintreface에 따라 알맞게 switch, button으로 변경 된다는데 아직 어떤 기준인지는 모르곘음.
        .toggleStyle(.switch)
        .padding()
        .tint(.blue)
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
