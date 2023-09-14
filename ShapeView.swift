import SwiftUI

struct ShapeView: View {
    var body: some View {
        VStack {
            Circle()
                       .size(width: 100, height: 100)
                       .background(.blue)
                   Rectangle()
                       .trim(from: 0.7, to: 1)
                       .background(.green)
                       .foregroundColor(.white)
                   Ellipse()
                       .stroke(.orange, lineWidth: 5)
                       .background(.brown)
                   Capsule()
                       .foregroundColor(.cyan)
                       .frame(width: 300, height: 100, alignment: .center)
                   RoundedRectangle(cornerRadius: 10.0)
                       .foregroundColor(.red)
                       .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ShapeViewPreviw: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
