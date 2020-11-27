//
//  Constants.swift
//  youtube-onedaybuild
//
//  Created by Abdullah Alnutayfi on 27/11/2020.
//

import Foundation
struct Constants {
    static var API_KEY = ""
    static var PLAYLIST_ID = "PLMRqhzcHGw1aLoz4pM_Mg2TewmJcMg9ua"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    
}

