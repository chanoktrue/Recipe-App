//
//  RecipeDetailResponse.swift
//  Recipe App
//
//  Created by Thongchai Subsaidee on 25/9/21.
//

import Foundation

struct RecipeDetailResponse: Decodable {
    let recipe: RecipeDetail 
}

struct RecipeDetail: Decodable {
    let imageUrl: String
    let id: String
    let title: String
    let ingredients: [String]
}

 
