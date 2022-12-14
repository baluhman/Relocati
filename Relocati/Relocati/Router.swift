//
//  Router.swift
//  Relocati
//
//  Created by Ilya Gruzdev on 03.12.2022.
//

import SwiftUI

struct RouterView<T: Hashable, Content: View>: View {
    
    @ObservedObject
    var router: Router<T>
    
    @ViewBuilder var buildView: (T) -> Content
    var body: some View {
        NavigationStack(path: $router.paths) {
            buildView(router.root)
            .navigationDestination(for: T.self) { path in
                buildView(path)
            }
        }
        .environmentObject(router)
    }
}

final class Router<T: Hashable>: ObservableObject {
    @Published var root: T
    @Published var paths: [T] = []
    
    enum Path {
        case A
        case B
    }

    init(root: T) {
        self.root = root
    }

    func push(_ path: T) {
        paths.append(path)
    }

    func pop() {
        paths.removeLast()
    }

    func updateRoot(root: T) {
        self.root = root
    }

    func popToRoot(){
       paths = []
    }
}
