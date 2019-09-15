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
    
    var content: Base? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
        let authURL = String(format: "%@?client_id=%@&redirect_uri=%@&response_type=token", arguments: [API.INSTAGRAM_AUTHURL,API.INSTAGRAM_CLIENT_ID,API.INSTAGRAM_REDIRECT_URI])
        
        let urlRequest = URLRequest.init(url: URL.init(string: authURL)!)
        webView.load(urlRequest)
    }
}

extension ViewController: WKNavigationDelegate  {

    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        
        if let url = getToken(webView: webView, urlString: API.CONTENT_INFO) {
            retriveFrom(url: url)
        }
        
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
                    self.content = retrievedInfo
                } catch {
                    print("JSON error: \(error.localizedDescription)")
                }
            }
        }
        task.resume()
    }
}

//extension UIImageView {
//    func load(url: URL) {
//        DispatchQueue.global().async { [weak self] in
//            if let data = try? Data(from: url as! Decoder) {
//                if let image = UIImage(data: data) {
//                    DispatchQueue.main.async {
//                        self?.image = image
//                    }
//                }
//            }
//        }
//    }
//}
