import SwiftUI

struct ShapeView: View {
    var body: some View {
        VStack {
            Circle()
                .size(width: 100, height: 100)
                .background(.blue)
                   Rectangle()
        }
    }
}

struct ShapeViewPreviw: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
