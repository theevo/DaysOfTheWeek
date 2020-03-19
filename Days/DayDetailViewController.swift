//
//  DayDetailViewController.swift
//  Days
//
//  Created by theevo on 2/25/20.
//  Copyright © 2020 theevo. All rights reserved.
//

import UIKit

class DayDetailViewController: UIViewController {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    var dayLandingPad: Day?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = dayLandingPad?.name
        descriptionLabel.text = dayLandingPad?.description
    }
}
