import Foundation
import Combine

class TasksViewModel: ObservableObject {
    
    @Published var selectedTaskID: UUID?
    
    let tasks: [TaskType] = [
        TaskType(title: "Office tasks", image: "task1"),
        TaskType(title: "Learner", image: "task2"),
        TaskType(title: "IT field", image: "task3"),
        TaskType(title: "Law work", image: "task4"),
        TaskType(title: "Other", image: "task5")
    ]
    
    func select(_ task: TaskType) {
        selectedTaskID = task.id
    }

    func isSelected(_ task: TaskType) -> Bool {
        return selectedTaskID == task.id
    }
}
