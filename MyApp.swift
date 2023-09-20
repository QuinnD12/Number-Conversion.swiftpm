import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            if #available(iOS 17.0, *) {
                NavigationStack {
                    VStack {
                        Text("Home")
                            .font(.system(size: 110, weight: .black, design: .rounded))
                            .padding(.bottom, 230)
                            .padding(.top, 50)
                        
                        NavigationLink(destination: BinaryToDecimal()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 45)
                                    .frame(width: 325, height: 75)
                                    .foregroundColor(.black)
                                Text("Binary To Decimal")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30, weight: .black, design: .rounded))
                            }
                        }.padding()
                        NavigationLink(destination: DecimalToHex()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 45)
                                    .frame(width: 325, height: 75)
                                    .foregroundColor(.black)
                                Text("Decimal To Hex")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30, weight: .black, design: .rounded))
                            }
                        }.padding()
                        
                        Spacer()
                    }
                }
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
