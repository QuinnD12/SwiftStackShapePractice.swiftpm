import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ScrollView {
                ShapeView()
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
