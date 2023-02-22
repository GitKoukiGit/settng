//
//  ContentView.swift
//  setting
//
//  Created by yamada kouki on 2023/02/23.
//

import SwiftUI

struct ContentView: View {
    @State private var frag = false
    @State private var wf = false
    @State private var bt = false
    @State private var kinai = false
    @State private var share = false
    @State var search = ""
    @State var impn = false
    var body: some View {
        NavigationStack {
            HStack {
                TextField("search...", text: $search)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .padding()
                    .textFieldStyle(.roundedBorder)
            }
            List {
                Section (header: Text("")) {
                    HStack {
                        Image(systemName: "airplane")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 30)
                            .offset(x:-10)
                        Toggle("機内モード", isOn: $frag)
                            .padding(.trailing, 18.0)
                    }
                    NavigationLink(destination: Text("オフ")) {
                        Image(systemName: "wifi")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 30)
                            .offset(x:-10)
                        Toggle("Wi-Fi", isOn: $wf)
                    }
                    NavigationLink(destination: Text("オン")) {
                        Image(systemName: "")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 30)
                            .offset(x:-10)
                        Toggle("Bluetooth", isOn: $bt)
                    }
                    NavigationLink(destination: Text("")) {
                        Image("mobil")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 30)
                            .offset(x:-10)
                        Text("モバイル通信")
                    }
                    NavigationLink(destination: Text("")) {
                        Image("share")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 30)
                            .offset(x:-10)
                        Text("インターネット共有")
                    }
                }
                
                Section (header: Text("")) {
                    NavigationLink(destination: Text("")) {
                        Text("通知")
                    }
                    NavigationLink(destination: Text("")) {
                        Text("サウンドと感覚")
                    }
                    NavigationLink(destination: Text("")) {
                        Text("集中モード")
                    }
                    NavigationLink(destination: Text("")) {
                        Text("スクリーンタイム")
                    }
                }
                Section (footer: Text("")) {
                    NavigationLink(destination: Text("")) {
                        Text("コントロールセンター")
                    }
                    NavigationLink(destination: Text("")) {
                        Text("一般")
                    }
                    NavigationLink(destination: Text("")) {
                        Text("画面表示と明るさ")
                    }
                    NavigationLink(destination: Text("")) {
                        Text("ホーム画面")
                    }
                    NavigationLink(destination: Text("")) {
                        Text("アクセシビリティ")
                    }
                    NavigationLink(destination: Text("")) {
                        Text("壁紙")
                    }
                    NavigationLink(destination: Text("")) {
                        Text("Siriと検索")
                    }
                }
                Section () {
                    NavigationLink(destination: Text("")) {
                        Text("Face IDとパスコード")
                    }
                    NavigationLink(destination: Text("")) {
                        Text("緊急SOS")
                    }
                    NavigationLink(destination: Text("")) {
                        Text("接触通知")
                    }
                    NavigationLink(destination: Text("")) {
                        Text("バッテリー")
                    }
                    NavigationLink(destination: Text("")) {
                        Text("プライバシーとセキュリティ")
                    }
                }
            }.navigationTitle("設定")
            .navigationBarTitleDisplayMode(.inline)  }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
