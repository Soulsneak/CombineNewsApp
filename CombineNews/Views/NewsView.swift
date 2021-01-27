//
//  NewsView.swift
//  CombineNews
//
//  Created by Derek on 1/27/21.
//


import SwiftUI
import WebKit

struct NewsView:UIViewRepresentable {
    var url:String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.url) else {return WKWebView.pageNotFound()}
        
        let request = URLRequest(url: url)
        
        let wkWebView = WKWebView()
        wkWebView.load(request)
        return wkWebView
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<NewsView>) {
        guard let url = URL(string: url) else { return }
        let request = URLRequest(url: url)
        uiView.load(request)
    }
    
    
}
