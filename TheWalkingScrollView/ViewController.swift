//
//  ViewController.swift
//  TheWalkingScrollView
//
//  Created by Nick on 12/21/15.
//  Copyright © 2015 Nick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    let WIDTH: CGFloat = 280
    let HEIGHT: CGFloat = 450

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for var x = 1; x <= 5; x++ {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            
            imgView.frame = CGRectMake(-WIDTH + ((WIDTH+80) * CGFloat(x)), 300, WIDTH, HEIGHT)
            
        }
        
        scrollView.contentSize = CGSizeMake((WIDTH + 80) * 5, scrollView.frame.size.height)
    }

}

