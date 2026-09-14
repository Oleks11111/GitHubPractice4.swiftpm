import SwiftUI

struct ContentView: View {
    @State private var tasks = ["Hello","It's me","It's Verity"]
    var body: some View {
        List{
            ForEach(tasks,id: \.self){ taskIs in
                Text(taskIs)
            }
        }
    }
}
