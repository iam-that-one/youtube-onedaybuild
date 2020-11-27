//
//  Response.swift
//  youtube-onedaybuild
//
//  Created by Abdullah Alnutayfi on 27/11/2020.
//

import Foundation

struct Response : Decodable{
    var items : [Video]?
    
    enum CodingKeyes:String, CodingKey{
        case items
    }
    
    init (from decoder : Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeyes.self)
        self.items = try container.decode([Video].self, forKey: .items)
    }
}
