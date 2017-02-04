//
//  VideoVC.swift
//  SamiYusufApp
//
//  Created by Mohammad Hemani on 2/3/17.
//  Copyright © 2017 Mohammad Hemani. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLbl: UILabel!
    
    private var _samiYusuf: SamiYusuf!
    
    var samiYusuf: SamiYusuf {
        get {
            return _samiYusuf
        } set {
            _samiYusuf = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = samiYusuf.videoTitle
        webView.loadHTMLString(samiYusuf.videoURL, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
