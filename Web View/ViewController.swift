//
//  ViewController.swift
//  Web View
//
//  Created by Berat Rıdvan Asiltürk on 4.07.2023.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet var webView: WKWebView!
    
    // MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        setInitViews()
    }

    private func setInitViews() {
        webView.navigationDelegate = self
        let loadURL = "https://github.com/beratridvanasilturk"
        let url = URL(string: loadURL)!
        
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
    
}

extension ViewController: WKNavigationDelegate {

    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        <#code#>
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        <#code#>
    }
    
}
