//
//  ContentView.swift
//  Hangout Splitter
//
//  Created by Kholif Huda Arrasyid on 09/04/23.
//

import SwiftUI

struct ResultPage: View {
    @State private var isExpanded = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("BGColor")
                    .ignoresSafeArea()
                VStack (spacing: 40) {
                    VStack(spacing: 20){
                        HStack{
                            Text("Grand Total:")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("ButtonColor"))
                            Spacer()
                            Text("Rp180.000")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(Color("ButtonColor"))
                        }
                        HStack{
                            Text("Total Member:")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("ButtonColor"))
                            Spacer()
                            Text("5")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(Color("ButtonColor"))
                        }
                    }
                    VStack (spacing: 20){
                        Text("Each Person Has To Pay")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("ButtonColor"))
                        Text("Rp36.000")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Brown"))
                        VStack {
                            Button {
                                isExpanded.toggle()
                            } label: {
                                Image("ChevronDown")
                                    .resizable()
                                    .frame(width: 22.0, height: 13.0)
                                    .rotationEffect(isExpanded ? .degrees(180) : .zero)
                            }
                            if isExpanded {
                                VStack{
                                    Text("hi")
                                    Text("huhu")
                                    Text("hi")
                                    Text("huhu")
                                    Text("hi")
                                    Text("huhu")
                                    Text("hi")
                                    Text("huhu")
                                    Text("hi")
                                    Text("huhu")
//                                    Text("hi")
//                                    Text("huhu")
//                                    Text("hi")
//                                    Text("huhu")
//                                    Text("hi")
//                                    Text("huhu")
                                }
                            }
                            
                        }
                    }
                    Spacer()
                    Button("Done") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .fontWeight(.bold)
                    .padding(.all)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.borderless)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.white, lineWidth: 2)
                    )
                    .background(Color("ButtonColor"))
                    .foregroundColor(Color("BGColor"))
                    .cornerRadius(30)
                }
                .navigationTitle("Amount To Pay")
                .navigationBarTitleDisplayMode(.inline)
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
            }
        }
    }
}

struct ResultPage_Previews: PreviewProvider {
    static var previews: some View {
        ResultPage()
    }
}
