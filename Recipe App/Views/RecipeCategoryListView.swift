//
//  RecipeCategoryListView.swift
//  Recipe App
//
//  Created by Thongchai Subsaidee on 22/9/21.
//

import SwiftUI

struct RecipeCategoryListView: View {
    
    let categories: [RecipeCategoryViewModel]
    
    var body: some View {
        List(categories) { category in
            
            NavigationLink(destination: RecipeListScreen(reciperCategory: category).navigationTitle(category.title)) {
                RecipeCategoryCellView(recipeCategory: category)
            }

        }
        .listStyle(.plain)
    }
}

