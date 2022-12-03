//
//  ContentView.swift
//  Relocati
//
//  Created by Oleg Krasnov on 02/12/2022.
//

import SwiftUI

enum Route: Hashable {
    case countryMatch(String)
    case bounceView(String)
}

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            PollView() { }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
