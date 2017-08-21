//
//  ImageViewController.swift
//  Iphone RND
//
//  Created by sibaprasad on 21/08/17.
//  Copyright © 2017 SP inc. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
class ImageViewController : ViewController{

    @IBOutlet var imageSample: UIImageView!

    override func viewDidLoad() {
        let url = "https://s-media-cache-ak0.pinimg.com/564x/a2/b8/e4/a2b8e40d4175b0a7c3e903e913d54cfc.jpg"
    
        if let checkedUrl = URL(string: url) {
            imageSample.contentMode = .scaleAspectFit
            downloadImage(url: checkedUrl)
        }
        
        // AlamofireImage 3
         
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    func downloadImage(url: URL) {
        print("Download Started")
        getDataFromUrl(url: url) { (data, response, error)  in
            guard let data = data, error == nil else { return }
            print(response?.suggestedFilename ?? url.lastPathComponent)
            print("Download Finished")
            DispatchQueue.main.async() { () -> Void in
                self.imageSample.image = UIImage(data: data)
            }
        }
    }
    
    func getDataFromUrl(url: URL, completion: @escaping (_ data: Data?, _  response: URLResponse?, _ error: Error?) -> Void) {
        URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            completion(data, response, error)
            }.resume()
    }
    
}
