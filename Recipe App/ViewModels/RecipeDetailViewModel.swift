//
//  RecipeDetailViewModel.swift
//  Recipe App
//
//  Created by Thongchai Subsaidee on 26/9/21.
//

import Foundation

@MainActor
class RecipeDetailViewModel: ObservableObject {
    
    @Published var imageUrl: URL?
    @Published var title: String = ""
    @Published var ingredients: [String] = []
    
    func populateRecipeDetail(recipeId: String) async {
        do{
            
            let recipeDetailResponse = try await WebService().get(url: Constants.Urls.recipeById(recipeId), parse: { data in
                return try? JSONDecoder().decode(RecipeDetailResponse.self, from: data)
            })
            
            let reciperDetail = recipeDetailResponse.recipe
            self.imageUrl = URL(string: reciperDetail.imageUrl)!
            self.title = reciperDetail.title
            self.ingredients = reciperDetail.ingredients
            
        }catch{
            print(error)
        }
    }
    
}
