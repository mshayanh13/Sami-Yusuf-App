//
//  ViewController.swift
//  SamiYusufApp
//
//  Created by Mohammad Hemani on 2/3/17.
//  Copyright © 2017 Mohammad Hemani. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var samiYusufs = [SamiYusuf]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let s1 = SamiYusuf(imageURL: "https://i.ytimg.com/vi/z2_2cFityc4/hqdefault.jpg?sqp=-oaymwETCHgQWkha8quKqQMHCAEVAACIQg==&rs=AOn4CLDGtbnN9UAbGqZu8IArjZjBCB5QLg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/z2_2cFityc4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "You Came To Me")
        let s2 = SamiYusuf(imageURL: "https://i.ytimg.com/vi/Tug63dI4MEY/hqdefault.jpg?custom=true&w=120&h=90&jpg444=true&jpgq=90&sp=68&sigh=hr9GukO0R5OyIY_W_O-vJLoej9k", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Tug63dI4MEY\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Healing")
        let s3 = SamiYusuf(imageURL: "https://i.ytimg.com/vi/FKV2oeS4vw8/hqdefault.jpg?custom=true&w=120&h=90&jpg444=true&jpgq=90&sp=68&sigh=BWyHLzHbu0PlIgwCa7OY9g0p36A", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/FKV2oeS4vw8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Forgotten Promises")
        let s4 = SamiYusuf(imageURL: "https://i.ytimg.com/vi/i3lqPUbYyTM/hqdefault.jpg?custom=true&w=120&h=90&jpg444=true&jpgq=90&sp=68&sigh=a06YLg2kcBcWHcg-SaP4TGPe60o", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/i3lqPUbYyTM\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Make Me Strong")
        let s5 = SamiYusuf(imageURL: "https://i.ytimg.com/vi/-QrMA5h-n_s/hqdefault.jpg?custom=true&w=120&h=90&jpg444=true&jpgq=90&sp=68&sigh=F04q-MSDRHpb0ImnLzHuHcs-6sw", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-QrMA5h-n_s\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Al-Mu'allim")
      
        samiYusufs.append(s1)
        samiYusufs.append(s2)
        samiYusufs.append(s3)
        samiYusufs.append(s4)
        samiYusufs.append(s5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SamiYusufCell", for: indexPath) as? SamiYusufCell {
            
            let samiYusuf = samiYusufs[indexPath.row]
            
            cell.updateUI(samiYusuf: samiYusuf)
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return samiYusufs.count
    }

}

