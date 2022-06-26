//
//  ContentView.swift
//  Best Track
//
//  Created by Abdullah Aiban on 25/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var imageName = "Question"
    var body: some View {
        VStack{
            Text("ماهو المسار المفضل لديك").font(.system(size: 35))
            Image(imageName)
                .resizable()
                .frame(width: 150, height: 150)
            Divider()
            Text("IOS")
                .fontWeight(.semibold)
                .font(.system(size: 30))
                .frame(width: 250, height: 60)
                .background(Color.blue.opacity(0.7))
                .clipShape(Capsule())
                .onTapGesture {
                    imageName = "Apple"
                }
            Text("Gamedev")
                .fontWeight(.semibold)
                .font(.system(size: 30))
                .frame(width: 250, height: 60)
                .background(Color.red)
                .clipShape(Capsule())
                .onTapGesture {
                    imageName = "gamedev"
                }
            
            Text("Web")
                .fontWeight(.semibold)
                .font(.system(size: 30))
                .frame(width: 250, height: 60)
                .background(Color.blue)
                .clipShape(Capsule())
                .onTapGesture {
                    imageName = "web"
                }
            
            Text("Android")
                .fontWeight(.semibold)
                .font(.system(size: 30))
                .frame(width: 250, height: 60)
                .background(Color.green)
                .clipShape(Capsule())
                .onTapGesture {
                    imageName = "Android"
                }
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
