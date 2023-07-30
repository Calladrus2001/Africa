//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Vishesh Dugar on 30/07/23.
//

import Foundation

extension Bundle {
  func decode(_ file: String) -> [CoverImage] {
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("Failed to locate \(file) in Bundle.")
    }
    
    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load \(file) from Bundle.")
    }
    
    let decoder = JSONDecoder()
    
    guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
      fatalError("Failed to decode \(file) from Bundle.")
    }
    
    return loaded
  }
}
