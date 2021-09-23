//
//  RecipeListScreen.swift
//  Recipe App
//
//  Created by Thongchai Subsaidee on 24/9/21.
//

import SwiftUI

struct RecipeListScreen: View {
    
    let reciperCategory: RecipeCategoryViewModel
    @StateObject private var recipeListVM = ReceipeListViewModel()
    
    var body: some View {
        RecipeListView(recipes: recipeListVM.recipes)
            .task {
                await recipeListVM.populateRecipesByCategory(name: reciperCategory.title )
            }
    }
}

struct RecipeListScreen_Previews: PreviewProvider {
    static var previews: some View {
        let recipeCategoryVM = RecipeCategoryViewModel(RecipeCategory(
            imageUrl: "https://res.cloudinary.com/dk4ocuiwa/image/upload/v1618257399/RecipesApi/Pizza.png",
            title: "Pizza"
        ))
        
        RecipeListScreen(reciperCategory: recipeCategoryVM )
    }
}
