import SwiftUI

enum AlbertSansFont {
    static func regular(size: CGFloat) -> Font {
        Font.custom("AlbertSans-Regular", size: size)
    }

    static func bold(size: CGFloat) -> Font {
        Font.custom("AlbertSans-Bold", size: size)
    }

    static func semiBold(size: CGFloat) -> Font {
        Font.custom("AlbertSans-SemiBold", size: size)
    }

    static func medium(size: CGFloat) -> Font {
        Font.custom("AlbertSans-Medium", size: size)
    }
}

enum AppFonts {
    static let albert34Bold = AlbertSansFont.bold(size: 34)
    static let albert30Bold = AlbertSansFont.bold(size: 30)
    static let albert28Bold = AlbertSansFont.bold(size: 28)
    static let albert26Bold = AlbertSansFont.bold(size: 26)
    static let albert24Bold = AlbertSansFont.bold(size: 24)
    static let albert22Bold = AlbertSansFont.bold(size: 22)
    static let albert20Bold = AlbertSansFont.bold(size: 20)
    static let albert18Bold = AlbertSansFont.bold(size: 18)
    static let albert16Bold = AlbertSansFont.bold(size: 16)
    static let albert14Bold = AlbertSansFont.bold(size: 14)
    static let albert12Bold = AlbertSansFont.bold(size: 12)

    static let albert24Regular = AlbertSansFont.regular(size: 24)
    static let albert22Regular = AlbertSansFont.regular(size: 22)
    static let albert18Regular = AlbertSansFont.regular(size: 18)
    static let albert16Regular = AlbertSansFont.regular(size: 16)
    static let albert14Regular = AlbertSansFont.regular(size: 14)
    static let albert12Regular = AlbertSansFont.regular(size: 12)

    static let albert24SemiBold = AlbertSansFont.semiBold(size: 24)
    static let albert22SemiBold = AlbertSansFont.semiBold(size: 22)
    static let albert20SemiBold = AlbertSansFont.semiBold(size: 20)
    static let albert18SemiBold = AlbertSansFont.semiBold(size: 18)
    static let albert16SemiBold = AlbertSansFont.semiBold(size: 16)
    static let albert14SemiBold = AlbertSansFont.semiBold(size: 14)
    static let albert12SemiBold = AlbertSansFont.semiBold(size: 12)

    static let albert24Medium = AlbertSansFont.medium(size: 24)
    static let albert20Medium = AlbertSansFont.medium(size: 20)
    static let albert18Medium = AlbertSansFont.medium(size: 18)
    static let albert16Medium = AlbertSansFont.medium(size: 16)
    static let albert14Medium = AlbertSansFont.medium(size: 14)
    static let albert12Medium = AlbertSansFont.medium(size: 12)
}
