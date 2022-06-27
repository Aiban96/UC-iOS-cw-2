//
//  ContentView.swift
//  Currency
//
//  Created by Abdullah Aiban on 26/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var currency = ""
    
    var body: some View {
        VStack{
            Spacer()
            Text("محول العملات العجيب!")
            .fontWeight(.semibold)
            .font(.system(size: 40))
            .foregroundColor(Color.black)
            Spacer()
            TextField("العملة بالدينار", text: $currency)
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
                .background(Color.gray.opacity(0.2)).frame(width: 600, height: 200)
            Spacer()
            HStack{
                Spacer()
                Image("USA")
                    .resizable()
                    .frame(width: 80, height: 60)
                    .clipShape(Capsule())
                Spacer()
                HStack{
                    Text(String(format: "%.2f", ((Double(currency) ?? 0) * 3.28)))
                    .fontWeight(.semibold)
                    .font(.system(size: 25))
                    Text("$")
                        .font(.system(size: 25))
                }
                Spacer()
            }
            HStack{
                Spacer()
                Image("GB")
                    .resizable()
                    .frame(width: 80, height: 60)
                    .clipShape(Capsule())
                Spacer()
                HStack{
                    Text(String(format: "%.2f", ((Double(currency) ?? 0) * 2.46)))
                    .fontWeight(.semibold)
                    .font(.system(size: 25))
                    Text("£")
                        .font(.system(size: 25))
                }
                Spacer()
            }
            HStack{
                Spacer()
                Image("Euro")
                    .resizable()
                    .frame(width: 80, height: 60)
                    .clipShape(Capsule())
                Spacer()
                HStack{
                    Text(String(format: "%.2f", ((Double(currency) ?? 0) * 2.70)))
                        .fontWeight(.semibold)
                        .font(.system(size: 25))
                        Text("€")
                        .font(.system(size: 25))
                }
                Spacer()
            }
            Spacer()
            Image("Convert")
                .resizable()
                .frame(width: 300, height: 270)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
