
import SwiftUI

struct SubscriptionRowView: View {
    let isSelected: Bool
    let date: String
    let description: String
    let desctiptionColor: Color
    let price: String

    var body: some View {
        HStack {
            // RadioButton
            RadioButton(isSelected: isSelected)

            VStack(alignment: .leading, spacing: 4) {
                Text(date)
                    .font(AppFonts.albert16SemiBold)

                Text(description)
                    .font(AppFonts.albert14SemiBold )
                    .foregroundColor(desctiptionColor)
            }
            .padding(.leading, 10)

            Spacer()

            Text(price)
                .font(AppFonts.albert16Regular)
                .foregroundStyle(.secondary)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(.white)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
        )
        .overlay(
            Group {
                if isSelected {
                    AppColor.mainGradient
                        .mask(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 3)
                        )
                } else {
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.clear, lineWidth: 3)
                }
            }
        )
        .padding(.horizontal)
    }
}
