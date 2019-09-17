//
//  ContentViewController.swift
//  Genius_Project
//
//  Created by admin on 16/09/2019.
//  Copyright © 2019 RenoyChowdhury. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var baseInfo: Base?
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getProfileImage(baseInfo?.data?.first?.user?.profile_picture)
    }
    
    func getContentImage(_ imageString: String?) -> UIImage {
        let url = URL(string: imageString!)
        URLSession.shared.dataTask(with: url!) { (data, resp, error) in
            return UIImage(data: data!)
        }
        return UIImage()
    }
    
    func getProfileImage(_ imageString: String?) {
        if let imageURL = imageString {
            let url = URL(string: imageURL)
            URLSession.shared.dataTask(with: url!, completionHandler: { (data, response, error) in
                
                if error != nil {
                    print(error!)
                    return
                }
                
                DispatchQueue.main.async {
                    self.imageView.image = UIImage(data: data!)
                }
            }).resume()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return baseInfo?.data?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "contentCell", for: indexPath) as! CollectionViewCell
        if let data = baseInfo?.data {
            for data in data{
                //cell.iamgeView.image = data.images?.standard_resolution?.url
                print(data.images?.standard_resolution?.url ?? "")
                cell.iamgeView.image = getContentImage(data.images?.standard_resolution?.url)
            }
        }
        return cell
    }
}
