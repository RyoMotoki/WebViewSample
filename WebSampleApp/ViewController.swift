//
//  ViewController.swift
//  WebSampleApp
//
//  Created by Ryo Motoki on 2018/03/01.
//  Copyright © 2018年 RyoMotoki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var titleBar: UINavigationBar!
    @IBOutlet var webView: UIWebView!
    var webUrl: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleBar.topItem?.title = "WebPage"
        
        webView.delegate = self
        webView.scalesPageToFit = true
        
        let url: URL = URL(string: "https://www.youtube.com/watch?v=1xp4__OVOpY")!
        let request: URLRequest = URLRequest(url: url)
        
        webView.loadRequest(request)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        print("indicator on")
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
        print("indicator off")
    }
    
    @IBAction func goBack() {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    
    @IBAction func goFoward() {
        if webView.canGoForward {
            webView.goForward()
        }
    }
}

