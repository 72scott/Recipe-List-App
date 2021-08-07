//
//  RecipeModel.swift
//  Recipe List App
//
//  

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        self.recipes = DataService.getLocalData()
        
        
    }
}
