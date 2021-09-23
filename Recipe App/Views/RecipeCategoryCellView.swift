//
//  RecipeCategoryCellView.swift
//  Recipe App
//
//  Created by Thongchai Subsaidee on 22/9/21.
//

import SwiftUI

struct RecipeCategoryCellView: View {
    
    let recipeCategory: RecipeCategoryViewModel
    
    var body: some View {
        HStack(spacing: 20) {
            
            // Image
            AsyncImage(url: recipeCategory.imageUrl) { image in
                    image.resizable()
//                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            } placeholder: {
                ProgressView()
            }
            
            // Titel
            Text(recipeCategory.title)
        }
    }
}


