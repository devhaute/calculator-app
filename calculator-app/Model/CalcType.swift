import Foundation

enum CalcType: Equatable {
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
