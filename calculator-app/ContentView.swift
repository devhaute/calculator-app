import SwiftUI

struct ContentView: View {
    @State var currentInput: CalcType
    @State var resultValue: Double
    @State var displayResult: Bool = false
    
    var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .trailing, spacing: 0) {
                ZStack(alignment: .bottomTrailing) {
                    Rectangle()
                        .fill(Color(hex: "#4C4C4C"))
                    Text(displayResult ? String(format: "%.0f", self.resultValue) : self.currentInput.calcIdentifier)
                        .foregroundColor(.white)
                        .font(.system(size: 50, weight: .light))
                        .padding(.trailing, 10)
                }
                
                HStack(spacing: 0) {
                    CalcButton(proxy: proxy, calcType: .AC, backgroundColor: "#444143", currentInput: $currentInput, resultValue: $resultValue)
                    CalcButton(proxy: proxy, calcType: .SignReverse, backgroundColor: "#444143", currentInput: $currentInput, resultValue: $resultValue)
                    CalcButton(proxy: proxy, calcType: .Remainder, backgroundColor: "#444143", currentInput: $currentInput, resultValue: $resultValue)
                    CalcButton(proxy: proxy, calcType: .Division, backgroundColor: "#F99E0C", currentInput: $currentInput, resultValue: $resultValue)
                }
                HStack(spacing: 0) {
                    CalcButton(proxy: proxy, calcType: .Number(number: 7), backgroundColor: "#676467", currentInput: $currentInput, resultValue: $resultValue)
                    CalcButton(proxy: proxy, calcType: .Number(number: 8), backgroundColor: "#676467", currentInput: $currentInput, resultValue: $resultValue)
                    CalcButton(proxy: proxy, calcType: .Number(number: 9), backgroundColor: "#676467", currentInput: $currentInput, resultValue: $resultValue)
                    CalcButton(proxy: proxy, calcType: .Multiply, backgroundColor: "#F99E0C", currentInput: $currentInput, resultValue: $resultValue)
                }
                HStack(spacing: 0) {
                    CalcButton(proxy: proxy, calcType: .Number(number: 4), backgroundColor: "#676467", currentInput: $currentInput, resultValue: $resultValue)
                    CalcButton(proxy: proxy, calcType: .Number(number: 5), backgroundColor: "#676467", currentInput: $currentInput, resultValue: $resultValue)
                    CalcButton(proxy: proxy, calcType: .Number(number: 6), backgroundColor: "#676467", currentInput: $currentInput, resultValue: $resultValue)
                    CalcButton(proxy: proxy, calcType: .Subtract, backgroundColor: "#F99E0C", currentInput: $currentInput, resultValue: $resultValue)
                }
                HStack(spacing: 0) {
                    CalcButton(proxy: proxy, calcType: .Number(number: 1), backgroundColor: "#676467", currentInput: $currentInput, resultValue: $resultValue)
                    CalcButton(proxy: proxy, calcType: .Number(number: 2), backgroundColor: "#676467", currentInput: $currentInput, resultValue: $resultValue)
                    CalcButton(proxy: proxy, calcType: .Number(number: 3), backgroundColor: "#676467", currentInput: $currentInput, resultValue: $resultValue)
                    CalcButton(proxy: proxy, calcType: .Plus, backgroundColor: "#F99E0C", currentInput: $currentInput, resultValue: $resultValue)
                }
                HStack(spacing: 0) {
                    CalcButton(proxy: proxy, calcType: .Number(number: 0), backgroundColor: "#676467", currentInput: $currentInput, resultValue: $resultValue)
                    CalcButton(proxy: proxy, calcType: .DecimalPoint, backgroundColor: "#676467", currentInput: $currentInput, resultValue: $resultValue)
                    CalcButton(proxy: proxy, calcType: .Result, backgroundColor: "#F99E0C", currentInput: $currentInput, resultValue: $resultValue)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(currentInput: .Number(number: 0), resultValue: 0)
    }
}
