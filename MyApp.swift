import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ScrollView {
                ContentView()
            }
            ZStack {
                Color.black
                    .ignoresSafeArea()
                ScrollView {
                    StackView()
                }
            }
        }
    }
}
