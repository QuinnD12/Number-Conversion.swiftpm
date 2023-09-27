import SwiftUI

@available(iOS 17.0, *)
struct DecimalToHex: View {
    @State var input = ""
    @State var output = ""
    
    var body: some View {
        VStack {
            Text("Decimal To Hexadecimal")
                .font(.system(size: 29, weight: .black, design: .rounded))
                .padding()
                .padding(.top, 50)
            
            ZStack {
                RoundedRectangle(cornerRadius: 45)
                    .frame(width: 350, height: 60)
                    .opacity(0.25)
                    .foregroundColor(.black)
                
                TextField("Enter Decimal Number", text: $input)
                    .frame(width: 300, height: 40)
                    .padding(45)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .onChange(of: input) { _ in
                        input = (Int(input) ?? 0) == 0 ? "" : input
                    }
            }
            Button {
                if input != "" {
                    output = decimalToHex(Int(input)!)
                }
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
                .font(.system(size: 40, weight: .black, design: .rounded))
                .padding(.top, 40)
            
            Spacer()
        }
    }
}
