//
//  WKWebView+Extensions.swift
//  CombineNews
//
//  Created by Derek on 1/27/21.
//
import WebKit
import Foundation

extension WKWebView{
    
    static func pageNotFound() -> WKWebView{
        let wk = WKWebView()
        wk.loadHTMLString("<html><body><h1>Page Not Found Oof! </h1></body></html>", baseURL: nil)
        return wk
    }
}
