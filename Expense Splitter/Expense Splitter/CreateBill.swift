//
//  CreateBill.swift
//  Expense Splitter
//
//  Created by Nyayu Siti Fahira Rizky Asmarani on 09/04/23.
//

import SwiftUI

struct CreateBill: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    Text("Step")
                    Text("2").font(.subheadline).fontWeight(.bold).foregroundColor(Color("ButtonColor"))
                                        .padding(.horizontal,-3)
                    Text("of 3")
                    }.padding(.vertical,6).foregroundColor(.gray).font(.subheadline)
                    .fontWeight(.regular)
                Spacer()
//                Image("Members")
                VStack(alignment: .center){
                    HStack{
                        Text("Hi, put your expenses here!")
                            .foregroundColor(Color("ButtonColor"))
                            .multilineTextAlignment(.leading)
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                }
                Button("Add Expense") {
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

            }
                .navigationTitle("Expense")
                .navigationBarTitleDisplayMode(.inline)
                .padding(.horizontal, 30)
                .padding(.top, 5)
                .background(Color("BGColor"))
            }

    }
}



struct CreateBill_Previews: PreviewProvider {
    static var previews: some View {
        CreateBill()
    }
}
