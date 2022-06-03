//
//  RecipeData.swift
//  CookCademy
//
//  Created by Sarah Watremet on 01/06/2022.
//

import Foundation

class RecipeData: ObservableObject {
  @Published var recipes = Recipe.testRecipes
    
    func recipes(for category: MainInformation.Category) -> [Recipe] {
        var filteredRecipes = [Recipe]()
        for recipe in recipes {
            if recipe.mainInformation.category == category {
            filteredRecipes.append(recipe)
            }
        }
        return filteredRecipes
    }
    
    func add(recipe: Recipe){
        if recipe.isValid {
            recipes.append(recipe)
        }
    }
}
