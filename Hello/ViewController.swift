//
//  ViewController.swift
//  Hello
//
//  Created by 빅맥 on 22/04/2019.
//  Copyright © 2019 bigmac. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITabBarDelegate {


    @IBOutlet var webView: WKWebView!
    @IBOutlet var myTabBar: UITabBar!
    
    var url = "https://www.google.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTabBar.delegate = self
        
        let url2 = URL(string: url)
        let request = URLRequest(url: url2!)
        
        self.webView.load(request)
        
    }


    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print(item.tag)
        if(item.tag == 1) {
            //your code for tab item 1
            url = "https://www.naver.com"
            self.webView.reload()
        }
        else if(item.tag == 2) {
            url = "https://www.daum.net"
            viewDidLoad()

        }
        
    }
    
    
    
}

