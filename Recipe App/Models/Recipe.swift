//
//  Recipe.swift
//  Recipe App
//
//  Created by Thongchai Subsaidee on 24/9/21.
//

import Foundation

struct RecipeRespones: Decodable {
    let recipes: [Recipe]
}

struct Recipe: Decodable {
    let id: String
    let imageUrl: String
    let title: String 
}

