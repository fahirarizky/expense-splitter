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
            ZStack {
                Color("BGColor")
                    .ignoresSafeArea()
                
                VStack (alignment: .leading){
                    HStack{
                        Spacer()
                        Text("Step")
                        Text("3").font(.subheadline).fontWeight(.semibold).foregroundColor(Color("ButtonColor"))
                            .padding(.horizontal,-3)
                        Text("of 3")
                        Spacer()
                    }.padding(.vertical,6).foregroundColor(.gray).font(.subheadline)
                        .fontWeight(.regular)
                    
                    ActivityMember()
                    
                    ForEach(0..<5) { _ in
                        Text("Test")
                    }
                    
                    .listStyle(.plain)
                    .font(.body)
                    .fontWeight(.regular)
                    
                    HStack{
                        Text("Grand Total")
                        Spacer()
                        Text("Price")
                    }.font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("LightGreenFont"))
                    
                    Button("Done") {
                        
                    }
                    .fontWeight(.bold)
                    .padding(.all)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.borderless)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color("BGColor"), lineWidth: 2)
                    )
                    .background(Color("ButtonColor"))
                    .foregroundColor(Color("BGColor"))
                    .cornerRadius(30)
                    
                    Spacer()
                }
                .navigationTitle("Review")
                .navigationBarTitleDisplayMode(.inline)
                .padding(.horizontal, 30.0)
                .padding(.vertical, 5.0)
                
            }
        }
    }
}

//struct ReviewList: View {
//    var body: some View{
//        VStack (alignment:.center, spacing:10){
//            HStack{
//                Text("Menu 1")
//                Spacer()
//                Text("Price 2")
//            }
//            HStack{
//                Text("Menu 2")
//                Spacer()
//                Text("Price 2")
//            }
//            HStack{
//                Text("Menu 2")
//                Spacer()
//                Text("Price 2")
//            }
//        }
//    }
//
//}

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
