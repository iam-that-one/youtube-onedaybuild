//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Abdullah Alnutayfi on 26/11/2020.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideos()
       
    }


}

