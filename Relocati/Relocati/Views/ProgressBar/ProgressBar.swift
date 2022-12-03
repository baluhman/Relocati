//
//  ProgressBar.swift
//  Relocati
//
//  Created by Oleg Krasnov on 03/12/2022.
//

import SwiftUI

struct ProgressBar: View {
    
    @State var progressWidth: CGFloat = 0
    
    var body: some View {
        //
        ZStack(alignment: .leading) {
            GeometryReader { proxy in
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(.clear)
                    .onAppear {
                        progressWidth = proxy.size.width
                    }
            }
            RoundedRectangle(cornerRadius: 30)
                .fill(.white.opacity(0.2))
            ZStack(alignment: .trailing) {
                RoundedRectangle(cornerRadius: 30)
                    .fill(.white)
                Image("airplane")
                    .clipShape(Capsule(style: .circular))
                    .frame(width: 20, height: 10)
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .fill(.black.opacity(0.7))
                    )
            }
            .frame(minWidth: 100)
            .fixedSize()
        }
        .frame(height: 13)
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar()
    }
}
