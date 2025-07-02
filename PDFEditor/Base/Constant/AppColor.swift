import SwiftUI

enum AppColor {
    // lightBlue - #2DB4FC66
    static let lightBlue = Color(
        .sRGB,
        red: 45.0 / 255.0,
        green: 180.0 / 255.0,
        blue: 252.0 / 255.0
    )
    
    static let descriptionColor = Color(
        .sRGB,
        red: 177.0 / 255.0,
        green: 177.0 / 255.0,
        blue: 202.0 / 255.0,
        opacity: 1
    )
    
    // lightBlue2 - #008CFF88
    static let lightBlue2 = Color(
        .sRGB,
        red: 0.0 / 255.0,
        green: 140.0 / 255.0,
        blue: 255.0 / 255.0,
        opacity: 156.0 / 255.0
    )
    
    static let lightGray = Color(
        .sRGB,
        red: 228.0 / 255.0,
        green: 228.0 / 255.0,
        blue: 228.0 / 255.0,
        opacity: 0.2
    )
    
    static var mainGradient: LinearGradient {
          LinearGradient(
              gradient: Gradient(colors: [
                  Color(.sRGB, red: 0/255, green: 153/255, blue: 255/255, opacity: 1),
                  Color(.sRGB, red: 158/255, green: 110/255, blue: 255/255, opacity: 1)
              ]),
              startPoint: .leading,
              endPoint: .trailing
          )
      }
    
    static let shadowColor = Color(
        .sRGB,
        red: 0.0 / 255.0,
        green: 51.0 / 255.0,
        blue: 255.0 / 255.0,
        opacity: 0.3
    )
}
