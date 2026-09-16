import SwiftUI

struct ContentView: View {
    @State var tasks: [Task] = []
    var body: some View {
        Group {
            HeaderView(tasks: $tasks)
            Text("List of Tasks")
        }
        .font(.system(size: 30))
    
        List(tasks, id: \.self){ currentTask in Text(currentTask.nameOfTask)}
    }
}

