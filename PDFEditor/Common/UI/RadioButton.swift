import SwiftUI

struct RadioButton: View {
    let isSelected: Bool
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(isSelected ? AppColor.lightBlue : Color.gray, lineWidth: 1.5)
                .frame(width: 28, height: 28)
                .background(
                    Circle()
                        .fill(Color.white)
                        .shadow(color: AppColor.lightBlue.opacity(0.2),
                                radius: 4, x: 0, y: 2)
                )
            
            if isSelected {
                Circle()
                    .fill(AppColor.lightBlue)
                    .frame(width: 16, height: 16)
            }
        }
    }
}
