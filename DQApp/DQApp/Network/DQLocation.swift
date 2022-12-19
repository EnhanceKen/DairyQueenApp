//
//  DQLocation.swift
//  DQApp
//
//  Created by Consultant on 12/16/22.
//

import Foundation

struct DQLocation: Codable {
    let lat: Double
    let lng: Double
    func hash(into hasher: inout Hasher) {
           hasher.combine(lat)
           hasher.combine(lng)
       }
}

struct DQLocationsResponse: Codable {
    let results: [DQLocation]
}

func fetchDQLocations(completion: @escaping ([DQLocation]) -> Void) {
    let apiKey = "AIzaSyBImRINicPLOQMxCi4XJKqqTu7Ql14sUh8"
    let baseURL = "https://maps.googleapis.com/maps/api/place/nearbysearch/json"
    let location = "40.7128,-74.0060" // New York City
    let radius = "20000" // 20 miles
    let keyword = "dairy queen"
    let urlString = "\(baseURL)?location=\(location)&radius=\(radius)&keyword=\(keyword)&key=\(apiKey)"
    let url = URL(string: urlString)!

    URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            print("Error fetching locations: \(error)")
            return
        }

        guard let data = data else {
            print("No data returned from API")
            return
        }

        let decoder = JSONDecoder()
        do {
            let response = try decoder.decode(DQLocationsResponse.self, from: data)
            completion(response.results)
        } catch {
            print("Error parsing API response: \(error)")
        }
    }.resume()
    
}
