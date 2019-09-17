//
//  Extensions.swift
//  Genius_Project
//
//  Created by admin on 16/09/2019.
//  Copyright © 2019 RenoyChowdhury. All rights reserved.
//

import Foundation
import WebKit

extension ViewController: WKNavigationDelegate  {
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        
        if let url = getToken(webView: webView, urlString: API.CONTENT_INFO) {
            retriveFrom(url: url)
        }
//        if self.hasToken {
//            performSegue(withIdentifier: "ToPage", sender: self)
//        }
        
        decisionHandler(.allow)
    }
    
    func getToken(webView: WKWebView, urlString: String) -> URL? {
        let accountTokenFromURL = webView.url?.absoluteString
        let getToken = accountTokenFromURL?.components(separatedBy: "#access_token=").last ?? ""
        if (accountTokenFromURL?.contains("access_token")) != nil {
            return URL(string: urlString+getToken )
        }
        return nil
    }
    
    func retriveFrom(url: URL) {
        let session = URLSession.shared
        let task = session.dataTask(with: url) { (data, resp, err) in
            if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                    let retrievedInfo = Base(dictionary: json as? NSDictionary ?? ["":""])
                    if retrievedInfo?.meta?.code == 200 {
                    self.content = retrievedInfo
                    self.performSegue(withIdentifier: "ToPage", sender: self)
                    }
                    
                    
                } catch {
                    print("JSON error: \(error.localizedDescription)")
                }
            }
        }
        task.resume()
    }
}


extension UIImageView {} 
