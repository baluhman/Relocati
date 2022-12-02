//
//  FontFamily.swift
//  Relocati
//
//  Created by Ilya Gruzdev on 02.12.2022.
//

import SwiftUI

extension Font {
    static func grotesk(size: CGFloat) -> Font {
        return .custom("SoyuzGrotesk-Bold", size: size)
    }
    
    static func inter(size: CGFloat) -> Font {
        return .custom("Inter-Regular", size: size)
    }
}

extension UIFont {
    static func grotesk(size: CGFloat) -> UIFont {
        return UIFont(name: "SoyuzGrotesk-Bold", size: size)!
    }
    static func inter(size: CGFloat) -> UIFont {
        return UIFont(name: "Inter-Regular", size: size)!
    }
}
