import SwiftUI

struct CalcButton: View {
    var col: Color
    var val: String
    var textCol: Color = .white
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(col)
                .frame(width: 90, height: 95)
            
            Text(val)
                .foregroundColor(textCol)
                .font(.system(size: 32))
        }
    }
}

struct StackView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(alignment: .trailing) {
                Spacer()
                
                Text("0")
                    .foregroundColor(.white)
                    .font(.system(size: 120, weight: .light))
                    .padding(.bottom, .none)
            
                VStack(spacing: 10) {
                    HStack(spacing: 5) {
                        CalcButton(col: .gray, val: "AC", textCol: .black)
                        CalcButton(col: .gray, val: "+/-", textCol: .black)
                        CalcButton(col: .gray, val: "%", textCol: .black)
                        CalcButton(col: .orange, val: "÷")
                    }
                    HStack(spacing: 5) {
                        CalcButton(col: Color(white: 0.35), val: "7")
                        CalcButton(col: Color(white: 0.35), val: "8")
                        CalcButton(col: Color(white: 0.35), val: "9")
                        CalcButton(col: .orange, val: "×")
                    }
                    HStack(spacing: 5) {
                        CalcButton(col: Color(white: 0.35), val: "4")
                        CalcButton(col: Color(white: 0.35), val: "5")
                        CalcButton(col: Color(white: 0.35), val: "6")
                        CalcButton(col: .orange, val: "-")
                    }
                    HStack(spacing: 5) {
                        CalcButton(col: Color(white: 0.35), val: "1")
                        CalcButton(col: Color(white: 0.35), val: "2")
                        CalcButton(col: Color(white: 0.35), val: "3")
                        CalcButton(col: .orange, val: "+")
                    }
                    HStack {
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 90)
                                .foregroundColor(Color(white: 0.35))
                                .frame(width: 90*2, height: 75)
                            
                            Text("0")
                                .foregroundColor(.white)
                                .padding(.leading, 32)
                                .font(.system(size: 32))
                        }
                        CalcButton(col: Color(white: 0.35), val: ".")
                        CalcButton(col: .orange, val: "=")
                    }
                }
            }
        }
    }
}

struct StackViewPreview: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
