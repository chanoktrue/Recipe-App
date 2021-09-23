//
//  RecipeCellView.swift
//  Recipe App
//
//  Created by Thongchai Subsaidee on 24/9/21.
//

import SwiftUI

struct RecipeCellView: View {
    
    let recipe: RecipeViewModel
    
    var body: some View {
        HStack {
            
            AsyncImage(url: recipe.imageUrl) { image in
                image.resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                
            } placeholder: {
                ProgressView()
            }
            
            Text(recipe.title)
        }
    }
}

