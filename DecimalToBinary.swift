import SwiftUI

struct DecimalToBinary: View {
    @State var output = ""
    @State var input = ""
    
    var body: some View {
        VStack {
            Text("Decimal To Binary")
                .font(.system(size: 29, weight: .black, design: .rounded))
                .padding()
                .padding(.top, 50)
            ZStack {
                RoundedRectangle(cornerRadius: 45)
                    .frame(width: 350, height: 60)
                    .opacity(0.25)
                    .foregroundColor(.black)
            
                TextField("Enter Decimal Number", text: $output)
                    .frame(width: 300, height: 40)
                    .padding(45)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .onChange(of: output) { _ in
                        output = (Int(output) ?? 0) == 0 ? "" : output
                    }
            }
            Button {
                if output != "" {
                    input = decToBin(Int(output)!)
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
            
            Text(input)
                .font(.system(size: 40, weight: .black, design: .rounded))
                .padding(.top, 40)
            
            Spacer()
             
        
            
        }
    }
}
