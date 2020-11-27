//
//  Model.swift
//  youtube-onedaybuild
//
//  Created by Abdullah Alnutayfi on 27/11/2020.
//

import Foundation

class Model{
    func getVideos(){
        
        // Create a URL object
        let url = URL(string: Constant.API_URL)
        guard url != nil else {return}
        // Get a URLSession object
        let session = URLSession.shared
        // Get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            //check if there were any errors
            if error != nil || data == nil{
                return
            }
            // Parsing the data into video objects
        }
        // Kick off the task
        dataTask.resume()
    }
}
