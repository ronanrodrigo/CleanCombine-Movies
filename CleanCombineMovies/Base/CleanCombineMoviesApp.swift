//
//  CleanCombineMoviesApp.swift
//  CleanCombineMovies
//
//  Created by Ronan Nunes on 04/01/21.
//

import SwiftUI

@main
struct CleanCombineMoviesApp: App {
    var body: some Scene {
        WindowGroup {
            ListMoviesViewFactory.make()
        }
    }
}
