
import SwiftUI

struct TaskType: Identifiable, Equatable {
    let id = UUID()
    let title: String
    let image: String
}

struct TaskRowView: View {
    let task: TaskType
    let isSelected: Bool
    
    var body: some View {
        HStack(spacing: 0){
            Image(task.image)
            .resizable()
            .frame(width: 44, height: 44)
            
            Text(task.title)
                .font(AppFonts.albert20Bold)
                .padding()
            
            Spacer()
        }
        .padding(.horizontal, 16)
        .frame(height: 75)
        .frame(maxWidth: .infinity)
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
    }
}



