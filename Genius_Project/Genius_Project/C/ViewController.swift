//
//  ViewController.swift
//  Genius_Project
//
//  Created by admin on 04/09/2019.
//  Copyright © 2019 RenoyChowdhury. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController {
    
    @IBOutlet private weak var webView: WKWebView!
    
    internal var hasToken: Bool = false
    internal var content: Base? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
        let authURL = String(format: "%@?client_id=%@&redirect_uri=%@&response_type=token", arguments: [API.INSTAGRAM_AUTHURL,API.INSTAGRAM_CLIENT_ID,API.INSTAGRAM_REDIRECT_URI])
        
        let urlRequest = URLRequest.init(url: URL.init(string: authURL)!)
        webView.load(urlRequest)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextScene = segue.destination as? ContentViewController
        
        nextScene?.baseInfo = content
    }

}
