//
//  RecipeFeaturedView.swift
//  Recipe List App
//
//  Created by Scott on 7/8/21.
//

import SwiftUI



struct RecipeFeaturedView: View {
    
    @EnvironmentObject var model:RecipeModel
    var body: some View {
        
        VStack {
            
            Text("Featured Recipes")
        
    GeometryReader { geo in
        
        TabView {
            ForEach (0..<model.recipes.count) { index in
                if model.recipes[index].featured == true {
                    
                    ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        
                        
                        VStack(spacing: 0) {
                            Image("lasagna")
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .clipped()
                            Text("Lasagna")
                                .padding(5)
                            
                        }
                    
                }
                    .frame(width: geo.size.width - 40,  height:  geo.size.height - 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(15)
                    .shadow(radius: 10)
            }
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
        
            VStack {
            
            
            }
            
        }
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeModel())
    }
}
