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

struct ShapeViewPreview: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
