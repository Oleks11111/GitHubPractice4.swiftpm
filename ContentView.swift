import SwiftUI

struct ContentView: View {
    @State var tasks: [Task] = []
    var body: some View {
        Group {
            HeaderView(tasks: $tasks)
            Text("List of Tasks")
        }
        .font(.system(size: 30))
    
        List(tasks, id: \.self){ currentTask in
            HStack {
                Button("delete") {
                    tasks.remove(at: tasks.firstIndex(of: currentTask)!)
                }
                Text(currentTask.nameOfTask)
            }
        }
    }
}

