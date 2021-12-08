//
//  ViewController.swift
//  HBGradientBlur
//
//  Created by haoboxuxu on 12/08/2021.
//  Copyright (c) 2021 haoboxuxu. All rights reserved.
//

import UIKit
import HBGradientBlur

class ViewController: UIViewController {
    
    @IBOutlet weak var coverImageView: UIImageView!
    
    let gradientView = HBHBGradientBlurView()

    override func viewDidLoad() {
        super.viewDidLoad()
        coverImageView.layer.cornerRadius = 20
        gradientView.config(coverImageView.image!)
        view.addSubview(gradientView)
        gradientView.layer.zPosition = -1
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradientView.frame = view.bounds
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        super.viewDidLayoutSubviews()
    }

}

