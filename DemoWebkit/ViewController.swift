//
//  ViewController.swift
//  DemoWebkit
//
//  Created by DoApps on 8/12/16.
//  Copyright © 2016 DoApps. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {
    var webView: WKWebView?

    override func loadView() {
        super.loadView()
        
        self.webView = WKWebView()
        self.view = self.webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var url = NSURL(string:"https://www.google.com.pe/")
        var req = NSURLRequest(URL: url!)
        self.webView?.loadRequest(req)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // CATCH ALERT
    func webView(webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: () -> Void) {
    
        if (message == "Your login session has expired.Please Re-Login.") {
                print("Iniciar sesion automaticamente nuevamente")
        }
    }


}

