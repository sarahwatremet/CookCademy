//
//  RecipeData.swift
//  CookCademy
//
//  Created by Sarah Watremet on 01/06/2022.
//

import Foundation

class RecipeData: ObservableObject {
  @Published var recipes = Recipe.testRecipes
}
