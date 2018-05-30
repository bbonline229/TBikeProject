//
//  ApiService.swift
//  Tbike
//
//  Created by Jack on 2018/5/30.
//  Copyright © 2018 Jack. All rights reserved.
//

import Foundation

class ApiService {
    
    var session: URLSession {
        return URLSession.shared
    }
    
    func loadData(with url: URL, completionHandler: @escaping ([Station]?) -> Void) {
        let task = session.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error.debugDescription)
                completionHandler(nil)
            }
            guard let data = data else {return}
            let jsonDecoder = JSONDecoder()
            
            let stationData = try? jsonDecoder.decode([Station].self, from: data)
            
            DispatchQueue.main.sync {
                completionHandler(stationData)
            }
            
        }
        task.resume()
    }
}







