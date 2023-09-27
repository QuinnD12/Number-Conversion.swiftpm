//
//  HexToDecimalView.swift
//  Number Conversion
//
//  Created by Quinn B. Davis on 9/22/23.
//

import SwiftUI

struct BinaryToDecimal: View {
    @State var input = ""
    @State var output = ""
    
    var body: some View {
        VStack {
            Text("Binary To Decimal")
                .font(.system(size: 29, weight: .black, design: .rounded))
                .padding()
                .padding(.top, 50)
            
            ZStack {
                RoundedRectangle(cornerRadius: 45)
                    .frame(width: 350, height: 60)
                    .opacity(0.25)
                    .foregroundColor(.black)
                
                TextField("Enter Binary Number", text: $input)
                    .frame(width: 300, height: 40)
                    .padding(45)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .onChange(of: input) { _ in
                        for i in input {
                            let testVal = Int(String(i)) ?? 3
                            if !(testVal == 0 || testVal == 1) {
                                input = ""
                            }
                        }
                    }
            }
            Button {
                if input != "" {
                    output = String(binToDecimal(input))
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


