//
//  coffee.swift
//  coffee
//
//  Created by Sei Mouk on 30/8/24.
//

import Foundation

struct CoffeeList: Decodable {
    let coffeeList: [coffee]
    
    enum CodkingKeys: String, CodingKey {
        case coffeeList = "coffee"
    }
}

struct coffee: Decodable{
    let name: String
    let image: String
    let price: String
    let rating: String
}

func readJSONFile(named fileName: String, withExtension fileExtension: String) -> CoffeeList? {
    // Locate the file in the bundle
    if let fileURL = Bundle.main.url(forResource: fileName, withExtension: fileExtension) {
        do {
            // Read the data from the file
            let data = try Data(contentsOf: fileURL)
            // Decode the data to the AppInfo struct
            let appInfo = try JSONDecoder().decode(CoffeeList.self, from: data)
            return appInfo
        } catch {
            print("Error reading or decoding file: \(error.localizedDescription)")
        }
    } else {
        print("File not found.")
    }
    return nil
}


