import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ScrollView {
                ContentView()
            }.ignoresSafeArea()
            ScrollView {
                StackView()
            }.ignoresSafeArea()
        }
    }
}
