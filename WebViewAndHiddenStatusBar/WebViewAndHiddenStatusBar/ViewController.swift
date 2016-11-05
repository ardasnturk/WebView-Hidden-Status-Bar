//
//  ViewController.swift
//  WebViewAndHiddenStatusBar
//
//  Created by Arda SENTURK on 05/11/2016.
//  Copyright © 2016 Arda SENTURK. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webViewOutlet: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        webViewOutlet.delegate = self
        if let url = URL(string: "http://ardasnturk.com/") {
            let request = URLRequest(url: url)
            webViewOutlet.loadRequest(request)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}

