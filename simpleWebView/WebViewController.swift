//
//  WebViewController.swift
//  simpleWebView
//
//  Created by 青木宏祐 on 2017/06/29.
//  Copyright © 2017年 noraworld. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {
    // webView propaty from StoryBoard
    @IBOutlet weak var webView: UIWebView!

    let initialUrl = NSURL(string: "https://www.google.co.jp")

    override func viewDidLoad() {
        super.viewDidLoad()

        // self.webViewdelete = self
        self.webView.delegate = self
        
        let request = NSURLRequest(url: initialUrl! as URL)
        self.webView.loadRequest(request as URLRequest)
        
        webView.scrollView.isScrollEnabled = true
    }

    @IBAction func prevBtn(_ sender: Any) {
        if self.webView.canGoBack {
            self.webView.goBack()
        }
    }

    @IBAction func nextBtn(_ sender: Any) {
        if self.webView.canGoForward {
            self.webView.goForward()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
