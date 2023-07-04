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
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
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
        activityIndicator.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
    
}
