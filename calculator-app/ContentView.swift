import SwiftUI

enum CalcType {
    case AC, SignReverse, Remainder, Division, Multiply, Subtract, Plus, DecimalPoint, Result
    case Number(number: Int)
}

extension CalcType {
    var calcIdentifier: String {
        switch self {
        case .AC:
            return "AC"
        case .SignReverse:
            return "+/-"
        case .Remainder:
            return "%"
        case .Division:
            return "/"
        case .Multiply:
            return "X"
        case .Subtract:
            return "-"
        case .Plus:
            return "+"
        case .DecimalPoint:
            return "."
        case .Result:
            return "="
        case .Number(let number):
            return "\(number)"
        }
    }
}

struct ContentView: View {
    var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .trailing, spacing: 0) {
                ZStack(alignment: .trailing) {
                    Rectangle()
                        .fill(Color(hex: "#4C4C4C"))
                    Text("0")
                        .foregroundColor(.white)
                        .font(.system(size: 50, weight: .light))
                }
                
                HStack(spacing: 0) {
                    Button {
                        print("AC")
                    } label: {
                        Text("AC")
                            .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                            .foregroundColor(.black)
                            .background(Color(hex: "#D6D6D6"))
                            .overlay(
                                Rectangle()
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(Color(hex: "#9C9C9C"))
                            )
                    }
                    Text("+/-")
                        .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                        .foregroundColor(.black)
                        .background(Color(hex: "#D6D6D6"))
                        .overlay(
                            Rectangle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(Color(hex: "#9C9C9C"))
                        )
                    Text("%")
                        .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                        .foregroundColor(.black)
                        .background(Color(hex: "#D6D6D6"))
                        .overlay(
                            Rectangle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(Color(hex: "#9C9C9C"))
                        )
                    Text("/")
                        .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                        .foregroundColor(.white)
                        .background(Color(hex: "#E99748"))
                        .overlay(
                            Rectangle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(Color(hex: "#9C9C9C"))
                        )
                }
                HStack(spacing: 0) {
                    Text("7")
                        .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                        .foregroundColor(.black)
                        .background(Color(hex: "#E0E0E0"))
                        .overlay(
                            Rectangle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(Color(hex: "#9C9C9C"))
                        )
                    Text("8")
                        .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                        .foregroundColor(.black)
                        .background(Color(hex: "#E0E0E0"))
                        .overlay(
                            Rectangle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(Color(hex: "#9C9C9C"))
                        )
                    Text("9")
                        .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                        .foregroundColor(.black)
                        .background(Color(hex: "#E0E0E0"))
                        .overlay(
                            Rectangle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(Color(hex: "#9C9C9C"))
                        )
                    Text("X")
                        .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                        .foregroundColor(.white)
                        .background(Color(hex: "#E99748"))
                        .overlay(
                            Rectangle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(Color(hex: "#9C9C9C"))
                        )
                }
                HStack(spacing: 0) {
                    Text("4")
                        .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                        .foregroundColor(.black)
                        .background(Color(hex: "#E0E0E0"))
                        .overlay(
                            Rectangle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(Color(hex: "#9C9C9C"))
                        )
                    Text("5")
                        .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                        .foregroundColor(.black)
                        .background(Color(hex: "#E0E0E0"))
                        .overlay(
                            Rectangle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(Color(hex: "#9C9C9C"))
                        )
                    Text("6")
                        .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                        .foregroundColor(.black)
                        .background(Color(hex: "#E0E0E0"))
                        .overlay(
                            Rectangle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(Color(hex: "#9C9C9C"))
                        )
                    Text("-")
                        .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                        .foregroundColor(.white)
                        .background(Color(hex: "#E99748"))
                        .overlay(
                            Rectangle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(Color(hex: "#9C9C9C"))
                        )
                }
                HStack(spacing: 0) {
                    Text("1")
                        .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                        .foregroundColor(.black)
                        .background(Color(hex: "#E0E0E0"))
                        .overlay(
                            Rectangle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(Color(hex: "#9C9C9C"))
                        )
                    Text("2")
                        .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                        .foregroundColor(.black)
                        .background(Color(hex: "#E0E0E0"))
                        .overlay(
                            Rectangle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(Color(hex: "#9C9C9C"))
                        )
                    Text("3")
                        .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                        .foregroundColor(.black)
                        .background(Color(hex: "#E0E0E0"))
                        .overlay(
                            Rectangle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(Color(hex: "#9C9C9C"))
                        )
                    Text("+")
                        .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                        .foregroundColor(.white)
                        .background(Color(hex: "#E99748"))
                        .overlay(
                            Rectangle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(Color(hex: "#9C9C9C"))
                        )
                }
                HStack(spacing: 0) {
                    Text("0")
                        .frame(width: proxy.size.width / 2, height: proxy.size.width / 4)
                        .foregroundColor(.black)
                        .background(Color(hex: "#E0E0E0"))
                        .overlay(
                            Rectangle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(Color(hex: "#9C9C9C"))
                        )
                    Text(".")
                        .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                        .foregroundColor(.black)
                        .background(Color(hex: "#E0E0E0"))
                        .overlay(
                            Rectangle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(Color(hex: "#9C9C9C"))
                        )
                    Text("=")
                        .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                        .foregroundColor(.white)
                        .background(Color(hex: "#E99748"))
                        .overlay(
                            Rectangle()
                                .stroke(lineWidth: 1)
                                .foregroundColor(Color(hex: "#9C9C9C"))
                        )
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
