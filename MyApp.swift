import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            if #available(iOS 17.0, *) {
                NavigationStack {
                    VStack {
                        Text("Numeber Converter")
                            .font(.system(size: 100, weight: .black, design: .rounded))
                            .padding(.bottom, 150)
                            .padding(.top, 70)
                        
                        HStack {
                            NavigationLink(destination: HexToDecimal()) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 45)
                                        .frame(width: 400, height: 75)
                                        .foregroundColor(.black)
                                    Text("Hex To Decimal")
                                        .foregroundColor(.white)
                                        .font(.system(size: 37, weight: .black, design: .rounded))
                                }
                            }.padding(35)
                            NavigationLink(destination: DecimalToHex()) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 45)
                                        .frame(width: 400, height: 75)
                                        .foregroundColor(.black)
                                    Text("Decimal To Hex")
                                        .foregroundColor(.white)
                                        .font(.system(size: 37, weight: .black, design: .rounded))
                                }
                            }.padding(35)
                        }
                        
                        HStack {
                            NavigationLink(destination: BinaryToDecimal()) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 45)
                                        .frame(width: 400, height: 75)
                                        .foregroundColor(.black)
                                    Text("Binary To Decimal")
                                        .foregroundColor(.white)
                                        .font(.system(size: 37, weight: .black, design: .rounded))
                                }
                            }.padding(35)
                            
                            NavigationLink(destination: DecimalToBinary()) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 45)
                                        .frame(width: 400, height: 75)
                                        .foregroundColor(.black)
                                    Text("Decimal To Binary")
                                        .foregroundColor(.white)
                                        .font(.system(size: 37, weight: .black, design: .rounded))
                                }
                            }.padding(35)
                        }
                        
                        Spacer()
                    }
                }.accentColor(Color(white: 0.35))
            } else {
                Image(systemName: "swift")
                    .resizable()
                    .scaledToFit()
                    .padding()
                Text("Version Unsupported")
                    .font(.system(size: 50, weight: .black, design: .rounded))
                    .padding(.top, 50)
                    .padding(.bottom, 30)
            }
        }
    }
}
