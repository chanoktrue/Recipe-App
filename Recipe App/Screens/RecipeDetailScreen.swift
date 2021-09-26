//
//  RecipeDetailScreen.swift
//  Recipe App
//
//  Created by Thongchai Subsaidee on 26/9/21.
//

import SwiftUI

struct RecipeDetailScreen: View {
    
    let recipeId: String
    @StateObject private var recipeDetailVM = RecipeDetailViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            
            // Loading Image
            AsyncImage(url: recipeDetailVM.imageUrl) { image in
                    image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width - 20)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            } placeholder: {
                ProgressView()
            }
            .padding(.bottom, 20)
            
            ForEach(recipeDetailVM.ingredients, id: \.self) { ingredient in
                Text(ingredient)
            }
            
            Spacer()
            
        }
        .padding()
        .task {
            await recipeDetailVM.populateRecipeDetail(recipeId: recipeId )
        }
        
    }
}

struct RecipeDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailScreen(recipeId: "36498")
    }
}
