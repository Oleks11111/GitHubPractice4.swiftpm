import SwiftUI

struct ContentView: View {
    @State var tasks: [Task] = []
    var body: some View {
           
        HeaderView(tasks: $tasks)
            
            
            
            List(tasks, id: \.self){ currentTask in Text(currentTask.nameOfTask)}
        }
        
    
}

