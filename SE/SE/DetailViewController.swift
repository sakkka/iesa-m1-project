//
//  DetailViewController.swift
//  SE
//
//  Created by Mastere 1 IT on 23/06/2016.
//  Copyright © 2016 Mastere 1 IT. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            //self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem{
            let stand = detail as! Stand
            //stand.setTitle("okoko")
            titleLabel.text = stand.title
            locationLabel.text = stand.location
            descriptionLabel.text = stand.standDescription
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

