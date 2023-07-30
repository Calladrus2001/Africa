//
//  AnimalModel.swift
//  Africa
//
//  Created by Vishesh Dugar on 30/07/23.
//

import SwiftUI

struct AnimalModelElement: Codable, Identifiable {
    let id, name, headline, description: String
    let link: String
    let image: String
    let gallery, fact: [String]
}
