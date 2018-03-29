//
//  ViewController.swift
//  CCAvenue Demo
//
//  Created by ios on 28/03/18.
//  Copyright © 2018 ios. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
  
    var webView: WKWebView!
    
    override func loadView() {
        
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //http://staging.yoursiteurl.com/ccavenue/getRSA.php?patient_id=891&invoice_id=777&pay_amount=1000&pay_type=rpc
        
        //load this url in webview after
        let myURL = URL(string: "http://staging.catexhealth.com/ccavenue/getRSA.php?patient_id=891&invoice_id=777&pay_amount=1000&pay_type=rpc")
        
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

