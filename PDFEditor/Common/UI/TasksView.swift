import SwiftUI

struct TasksView: View {
    @StateObject private var viewModel = TasksViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.tasks) { task in
                TaskRowView(task: task, isSelected: viewModel.isSelected(task))
                    .padding(.top, 15)
                    .padding(.horizontal, 5)
                    .onTapGesture {
                        viewModel.select(task)
                    }
                    .listRowSeparator(.hidden)
                    .listRowInsets(EdgeInsets())
                    .listRowBackground(Color.clear)
            }
        }
        .listStyle(.plain)
        .padding(.horizontal, 16)
    }
}

