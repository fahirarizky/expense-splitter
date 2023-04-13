//
//  CreateBill2.swift
//  Expense Splitter
//
//  Created by Nyayu Siti Fahira Rizky Asmarani on 09/04/23.
//

import SwiftUI

struct CreateBill2: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    Text("Step")
                    Text("1").font(.subheadline).fontWeight(.bold).foregroundColor(Color("ButtonColor"))
                                        .padding(.horizontal,-3)
                    Text("of 2")
                    }.padding(.vertical,6).foregroundColor(.gray).font(.subheadline)
                    .fontWeight(.regular)
                Spacer()
                VStack(alignment: .leading){
                    HStack{
                        Spacer()
                            .frame(width: 275.0)
//                        Button("Add Expense") {
//                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                        }
//                        .foregroundColor(Color("ButtonColor"))
                    }
                    HStack{
                        Text("Expenses")
                            .foregroundColor(Color("ButtonColor"))
                            .multilineTextAlignment(.leading)
                            .font(.title3)
                            .fontWeight(.heavy)
                            .padding()
                        Spacer()
                            .frame(width: 140.0)
                    }
                    List{
                        ListView()
                    }
                    .listStyle(.inset)
                }
                Spacer()
                    .frame(height: 40.0)
                Button("Continue") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .fontWeight(.bold)
                .padding(.all)
                .frame(maxWidth: .infinity)
//                .frame(width: 350.0, height: 50.0)
                .buttonStyle(.borderless)
                .overlay(
                                RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.white, lineWidth: 2)
                        )
                .background(Color("ButtonColor"))
                .foregroundColor(Color("BGColor"))
                .cornerRadius(30)
                Spacer()
                    .frame(height: 400.0)
            }
                .navigationTitle("Expenses")
                .navigationBarTitleDisplayMode(.inline)
                .padding(.horizontal, 30)
                .padding(.top, 5)
                .background(Color("BGColor"))
            
                .toolbar{
//                    Button("Add Expense"){
//                    }
                    Button{
                    } label: {
                        Image(systemName: "plus")
                    }
                    .foregroundColor(Color("ButtonColor"))
                }
            }

    }
}

struct ListView: View {
    var body: some View{
        VStack(alignment: .leading){
            HStack{
                VStack{
                    Spacer()
                    Text("Desc")
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("ButtonColor"))
                    Spacer()
                    Text("Price")
                        .font(.body)
                        .foregroundColor(Color ("LightGreenFont"))
                    Spacer()
                }
//                .background(Color("BGColor"))

                Spacer()
                Image("Chevron")
                    .resizable()
                    .frame(width: 10.0, height: 15.0)
            }
        }
//        .background(Color("BGColor"))

//        .background(Color("BGColor"))

    }
    
}

struct CreateBill2_Previews: PreviewProvider {
    static var previews: some View {
        CreateBill2()
    }
}