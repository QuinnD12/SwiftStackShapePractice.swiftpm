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
            Rectangle()
                        .frame(width: 100, height: 100, alignment: .center)
                        .foregroundColor(.black)
                        .overlay(
                            Rectangle()
                                .frame(width: 55, height: 55, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.blue))
                    
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .frame(width: 300, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .overlay(
                            Text("Click Me")
                                .foregroundColor(.white)
                                .font(.custom("American Typewriter", size: 35)))
                    
            Rectangle()
                        .trim(from: 0.25, to: 0.5)
                        .rotation(Angle(degrees: -45), anchor: .topLeading)
                        .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                        .foregroundColor(.yellow)

        }
    }
}

struct ShapeViewPreview: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
