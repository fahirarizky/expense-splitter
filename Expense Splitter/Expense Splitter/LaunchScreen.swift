//
//  SwiftUIView.swift
//  Expense Splitter
//
//  Created by Hafidz Ismail Hidayat on 13/04/23.
//

import SwiftUI


struct LaunchScreen: View {
    
    @State private var drawingWidth = false
    @State private var Neko : String = ""
    
    var body: some View {
        VStack{
            Image(Neko)
                .resizable()
                .frame(maxWidth: 210, maxHeight: 240)
                .onAppear(perform: nekoRun)
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color(.systemGray6))
                RoundedRectangle(cornerRadius:5)
                    .fill(Color("ButtonColor"))
                    .frame(width: drawingWidth ? 330 : 0, alignment: .leading)
                    .animation(.easeInOut(duration: 2.8).repeatForever(autoreverses: false))
            }
            .frame(height: 12)
            .onAppear {
                drawingWidth.toggle()
                
            }
            .padding(.top, 40)
            .padding(.bottom, 20)
            
            
            Text("Loading...")
                .font(.caption)
            
        }
        .padding(.horizontal, 30)
    }
    func nekoRun() {
        var index = 1
        let timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { (Timer) in
            
            Neko = "Neko\(index)"
            
            index += 1
            
            if (index > 4) {
                index = 1
            }
        }
    }
}


struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}

