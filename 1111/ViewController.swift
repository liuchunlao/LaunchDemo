//
//  ViewController.swift
//  1111
//
//  Created by liucl on 2022/12/3.
//

import UIKit

class ViewController: UIViewController {
    let lbl = UILabel.init()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl.font = UIFont.systemFont(ofSize: 14)
        lbl.frame = self.view.bounds
        lbl.numberOfLines = 0
        lbl.textAlignment = .center
        view.addSubview(lbl)
        
        UserDefaults.standard.addObserver(self, forKeyPath: "111", options: NSKeyValueObservingOptions.new, context: nil)
        
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        
        let info = UserDefaults.standard.string(forKey: "111")
        lbl.text = info
    }
    
    deinit {
        UserDefaults.standard.removeObserver(self, forKeyPath: "111")
    }


}

