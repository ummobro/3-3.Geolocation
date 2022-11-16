//
//  ContentView.swift
//  WebViewHTML
//
//  Created by Kangmo Joh on 2022/10/11.
//

import SwiftUI
import WebKit  // 웹 뷰 이용을 위한 웹킷 라이브러리 가져오기

struct ContentView: View {
   @State private var showWebView = false    // 웹 뷰 상태를 확인하는 객체 생성
   private let urlString: String = "https://ummobro.github.io/GeolocationInWebView/"
   var body: some View {
       VStack(spacing: 20){  // spacing : 공간삽입
           WebView(url: URL(string: urlString)!).frame(height: 800.0)
       }
   }
}

// 웹뷰 구조체 생성
struct WebView: UIViewRepresentable {
   var url: URL // URL 변수 생성
   
   func makeUIView(context: Context) -> WKWebView {
       return WKWebView()
   }
   
   // URL 로드 상태를 프로그램에 알리는 변수
   func updateUIView(_ uiView: WKWebView, context: Context) {
       let request = URLRequest(url: url) // URL 요청 및 지정
       uiView.load(request)
   }
}

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
       ContentView()
   }
}


