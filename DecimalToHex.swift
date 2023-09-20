import SwiftUI

func hexFormat(_ digit: String) -> String {
    switch digit {
        case "10":
            return "A"
        case "11":
            return "B"
        case "12":
            return "C"
        case "13":
            return "D"
        case "14":
            return "E"
        case "15":
            return "F"
        default:
            return digit
    }
}

func decimalToHex(_ dec: Int) -> String {
    var hex = ""
    let dec = abs(dec)
    
    if dec != 0 {
        hex = decimalToHex(Int(floor(Double(dec / 16)))) + hexFormat(String(Int(dec % 16)))
    }
    
    return hex
}

struct DecimalToHex: View {
    @State var input = ""
    @State var output = ""
    
    var body: some View {
        VStack {
            Text("Decimal To Hexadecimal")
                .font(.system(size: 29, weight: .black, design: .rounded))
                .padding()
            
            ZStack {
                RoundedRectangle(cornerRadius: 45)
                    .frame(width: 350, height: 60)
                    .opacity(0.25)
                    .foregroundColor(.black)
                
                TextField("Enter Decimal Number", text: Binding(
                    get: { input },
                    set: { input = (Int($0) ?? 0) == 0 ? "" : $0}
                ))
                    .frame(width: 300, height: 40)
                    .padding(45)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
            }
            Button {
                output = decimalToHex(Int(input)!)
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 45)
                        .frame(width: 200, height: 100)
                        .foregroundColor(.black)
                    Text("Calculate")
                        .foregroundColor(.white)
                        .font(.system(size: 30, weight: .black, design: .rounded))
                }
            }.padding()
            
            Text(output)
                .font(.system(size: 30, weight: .black, design: .rounded))
                .padding()
            
            Spacer()
        }
    }
}

struct DecimalToHex_Previews: PreviewProvider {
    static var previews: some View {
        DecimalToHex()
    }
}
