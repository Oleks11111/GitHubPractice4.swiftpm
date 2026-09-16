import SwiftUI

struct ContentView: View {
    @State var tasks: [Task] = [
        Task(nameOfTask:"Buy Milk"),
        Task(nameOfTask:"Buy Eggs"),
        Task(nameOfTask:"Buy Bread"),
    ]
    var body: some View {
        List{
            ForEach(tasks, id: \.self){ currentTask in Text(currentTask.nameOfTask)}
        }
    }
    
}


