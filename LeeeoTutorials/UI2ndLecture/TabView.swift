//
//  TabView.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/04/15.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {

        TabView{
            ZStack{
                Color.orange.ignoresSafeArea()
                Text("LEEEO")
            }
            .tabItem{
                Image(systemName: "bolt")
                Text("item")
            }
            
            Text("Leeeo2")
                .tabItem{
                    Label("item2", systemImage: "heart")
                }
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
