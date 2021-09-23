//
//  RecipeListViewModel.swift
//  Recipe App
//
//  Created by Thongchai Subsaidee on 24/9/21.
//

import SwiftUI


@MainActor
class ReceipeListViewModel: ObservableObject {
    
    @Published var recipes: [RecipeViewModel] = [RecipeViewModel]()
    
    func populateRecipesByCategory(name: String) async {
        do{
            let recipeResponse = try await WebService().get(url: Constants.Urls.recipeByCategoryName(name)) { data in
                return try? JSONDecoder().decode(RecipeRespones.self, from: data)
            }
            
            self.recipes = recipeResponse.recipes.map(RecipeViewModel.init)
            
        }catch {
            print(error)
        }
    }
    
}


struct RecipeViewModel {
    private let recipe: Recipe
    
    init(_ recipe: Recipe) {
        self.recipe = recipe
    }
    
    var id: String {
        recipe.id
    }
    
    var title: String {
        recipe.title
    }
    
    var imageUrl: URL? {
        URL(string: recipe.imageUrl)
    }
}
