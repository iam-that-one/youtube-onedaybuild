//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Abdullah Alnutayfi on 26/11/2020.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {
   
    var model = Model()
    var videos = [Video]()
    @IBOutlet weak var tableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideos()
        tableView.delegate = self
        tableView.dataSource = self
        model.delegate = self
    }
    func videoFetched(_ videos: [Video]) {
        self.videos = videos
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath)
        let title = videos[indexPath.row].title
        cell.textLabel?.text = title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}


