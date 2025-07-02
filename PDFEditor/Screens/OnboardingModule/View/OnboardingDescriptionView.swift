
import SwiftUI

struct OnboardingDescriptionView: View {
    let upperHeader: String
    let highlightWord: String
    let lowerHeader: String
    let firstLine: String
    let secondLine: String
    
    var body: some View {
        VStack {
            Text(changeWordColor(upperHeader))
                .font(AppFonts.albert34Bold)
                
            Text(changeWordColor(lowerHeader))
                .font(AppFonts.albert34Bold)
                .padding(.bottom, 3)
            
            VStack(spacing: 0) {
                Text(firstLine)
                    .foregroundColor(AppColor.descriptionColor)
                    .font(AppFonts.albert18SemiBold)
                
                Text(secondLine)
                    .foregroundColor(AppColor.descriptionColor)
                    .font(AppFonts.albert18SemiBold)
            }
        }
        .padding()
    }
    
    func changeWordColor(_ string: String) -> AttributedString {
        var attrString: AttributedString {
            var attrString = AttributedString(string)
            attrString.foregroundColor = .black
            
            if let range = attrString.range(of: highlightWord) {
                attrString[range].foregroundColor = AppColor.lightBlue
            }
            
            return attrString
        }
        return attrString
    }
}

