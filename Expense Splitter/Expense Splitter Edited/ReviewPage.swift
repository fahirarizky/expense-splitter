//
//  ReviewPage.swift
//  Expense Splitter
//
//  Created by Nyayu Siti Fahira Rizky Asmarani on 10/04/23.
//

import SwiftUI

struct ReviewPage: View {
    var body: some View {
        NavigationView{
            VStack (alignment: .leading){
                HStack{
                    Spacer()
                    Text("Step")
                    Text("2").font(.subheadline).fontWeight(.semibold).foregroundColor(Color("ButtonColor"))
                        .padding(.horizontal,-3)
                    Text("of 2")
                    Spacer()
                }.padding(.vertical,6).foregroundColor(.gray).font(.subheadline)
                    .fontWeight(.regular)
                
                ActivityMember()
                
                List{
                    ReviewList()
                }.listStyle(.grouped)
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(Color("ButtonColor"))
                    .scrollContentBackground(/*@START_MENU_TOKEN@*/.hidden/*@END_MENU_TOKEN@*/)
                    .background(Color("BGColor"))
                    
                
                HStack{
                    Text("Grand Total")
                    Spacer()
                    Text("Price")
                }.font(.title3)
                    .fontWeight(.semibold)
                    .padding(.bottom, 20.0)
                    .foregroundColor(Color("LightGreenFont"))

                Button("Done") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .fontWeight(.bold)
                .padding(.all)
                .frame(maxWidth: .infinity)
                //                .frame(width: 350.0, height: 50.0)
                .buttonStyle(.borderless)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color("BGColor"), lineWidth: 2)
                )
                .background(Color("ButtonColor"))
                .foregroundColor(Color("BGColor"))
                .cornerRadius(30)
            }
            .navigationTitle("Review")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.horizontal, 30.0)
            .padding(.vertical, 5.0)
            .background(Color("BGColor"))
        }
    }
}

struct ReviewList: View {
    var body: some View{
        VStack (alignment:.center, spacing:10){
            HStack{
                Text("Menu 1")
                Spacer()
                Text("Price 2")
            }
            HStack{
                Text("Menu 2")
                Spacer()
                Text("Price 2")
            }
            HStack{
                Text("Menu 2")
                Spacer()
                Text("Price 2")
            }
        }
//        .background(Color("BGColor"))
    }
    
}

struct ActivityMember: View{
    var body: some View{
        VStack (alignment: .leading, spacing: 5) {
            HStack{
                Text("Bukber Angkatan Expense")
            }
            .font(.title3)
            .fontWeight(.semibold)
            HStack{
                Text("5")
                Text("Person")
            }
            .font(.headline)
            .fontWeight(.regular)
        }
        .foregroundColor(Color("ButtonColor"))
        //        .padding(.leading, -90)
        
    }
}

struct ReviewPage_Previews: PreviewProvider {
    static var previews: some View {
        ReviewPage()
    }
}
