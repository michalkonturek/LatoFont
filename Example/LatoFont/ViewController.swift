//
//  ViewController.swift
//  LatoFont
//
//  Created by Michal Konturek on 07/28/2016.
//  Copyright (c) 2016 Michal Konturek. All rights reserved.
//

import UIKit
import LatoFont

class ViewController: UIViewController {

    @IBOutlet weak var hairlineLabel: UILabel!
    @IBOutlet weak var hairlineItalicLabel: UILabel!
    
    @IBOutlet weak var lightLabel: UILabel!
    @IBOutlet weak var lightItalicLabel: UILabel!
    
    @IBOutlet weak var regularLabel: UILabel!
    @IBOutlet weak var italicLabel: UILabel!
    
    @IBOutlet weak var boldLabel: UILabel!
    @IBOutlet weak var boldItalicLabel: UILabel!
    
    @IBOutlet weak var blackLabel: UILabel!
    @IBOutlet weak var blackItalicLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let size: CGFloat = 17.0
        
		self.hairlineLabel.font = UIFont.latoHairline(size: size)
		self.hairlineItalicLabel.font = UIFont.latoHairlineItalic(size: size)
		
		self.lightLabel.font = UIFont.latoLight(size: size)
		self.lightItalicLabel.font = UIFont.latoItalic(size: size)
		
        self.regularLabel.font = UIFont.lato(size: size)
        self.italicLabel.font = UIFont.latoItalic(size: size)
        
        self.boldLabel.font = UIFont.latoBold(size: size)
        self.boldItalicLabel.font = UIFont.latoBoldItalic(size: size)
        
        self.blackLabel.font = UIFont.latoBlack(size: size)
        self.blackItalicLabel.font = UIFont.latoBlackItalic(size: size)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

