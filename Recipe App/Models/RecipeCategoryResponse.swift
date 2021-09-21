//
//  RecipeCategoryResponse.swift
//  Recipe App
//
//  Created by Thongchai Subsaidee on 22/9/21.
//

import Foundation

struct RecipeCategoryResponse: Decodable {
    let categories: [RecipeCategory]
}

struct RecipeCategory: Decodable {
    let imageUrl: String
    let title: String
}
