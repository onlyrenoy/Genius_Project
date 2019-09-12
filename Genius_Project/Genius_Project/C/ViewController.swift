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
    
    @IBOutlet weak var webView: WKWebView!
    
    var getAccountToken = ""
    var urlWithAT = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
        let authURL = String(format: "%@?client_id=%@&redirect_uri=%@&response_type=token", arguments: [API.INSTAGRAM_AUTHURL,API.INSTAGRAM_CLIENT_ID,API.INSTAGRAM_REDIRECT_URI])
        let urlRequest = URLRequest.init(url: URL.init(string: authURL)!)
        webView.load(urlRequest)
    }
}

extension ViewController: WKNavigationDelegate  {
    //URL TO GET INFO URL(string: "https://api.instagram.com/v1/users/self/?access_token=\(getAccountToken)")
    //URL TO GET IMAGES URL(string: "https://api.instagram.com/v1/users/self/media/recent/?access_token=\(getAccountToken)")
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        guard let accountTokenFromURL = webView.url?.absoluteString else { return }
        guard let getToken = accountTokenFromURL.components(separatedBy: "#access_token=").last else{
            return
        }
        
        if accountTokenFromURL.contains("access_token") {
            getAccountToken = getToken
            
            if let AT = URL(string: "https://api.instagram.com/v1/users/self/media/recent/?access_token=\(getAccountToken)"){
                let session = URLSession.shared
                let task = session.dataTask(with: AT) { (data, resp, err) in
                    if let data = data {
                        let jsonDecoder = JSONDecoder()
                        let responseModel = try? jsonDecoder.decode(Base.self, from: data)
                        print(responseModel)
                    }
                }
                task.resume()
            }
        }
        decisionHandler(.allow)
    }
}
