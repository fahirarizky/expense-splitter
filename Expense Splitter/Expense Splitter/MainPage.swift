//
//  CreateBill.swift
//  Expense Splitter
//
//  Created by Nyayu Siti Fahira Rizky Asmarani on 09/04/23.
//

import SwiftUI

struct MainPage: View {
    @State var activityName: String = ""
    @State var totalMembers: String = ""
    var body: some View {
        NavigationView {
            ZStack {
                Color("BGColor")
                    .ignoresSafeArea()
                VStack {
                    HStack{
                        Text("Step")
                        Text("1").font(.subheadline).fontWeight(.bold).foregroundColor(Color("ButtonColor"))
                            .padding(.horizontal,-3)
                        Text("of 3")
                    }.padding(.vertical,6).foregroundColor(.gray).font(.subheadline)
                        .fontWeight(.regular)
                    Spacer()
                    Image("NekoNew")
                        .resizable()
                        .frame(width: 210.0, height: 240.0)
                    Spacer()
                    VStack(spacing: 20){
                        VStack(alignment: .leading, spacing: 10){
                            Text("Activity Name")
                                .foregroundColor(Color("ButtonColor"))
                                .multilineTextAlignment(.leading)
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            TextField("Activity Name", text: $activityName)
                                .padding(.leading)
                                .frame(maxWidth: .infinity)
                                .frame(height: 50.0)
                                .font(.body)
                                .overlay(RoundedRectangle(cornerRadius: 15) .stroke(Color.gray, lineWidth: 2))
                                .background(Color(.white))
                                .disableAutocorrection(true)
                                .border(.gray)
                                .cornerRadius(15)
                        }
                        
                        VStack (alignment: .leading, spacing: 10){
                            Text("Total Members")
                                .foregroundColor(Color("ButtonColor"))
                                .multilineTextAlignment(.leading)
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                            TextField("Total Members", text: $totalMembers)
                                .padding(.leading)
                                .frame(maxWidth: .infinity)
                                .frame(height: 50.0)
                                .font(.body)
                                .overlay(RoundedRectangle(cornerRadius: 15) .stroke(Color.gray, lineWidth: 2))
                                .background(Color(.white))
                                .disableAutocorrection(true)
                                .border(.gray)
                                .cornerRadius(15)
                        }
                        
                    }
                    Spacer()
                        .frame(height: 40.0)
                    NavigationLink(destination: CreateBill(activityName: $activityName, totalMembers: $totalMembers), label: {
                        Text("Continue")
                    })
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
                    Spacer()
                    
                }
                .navigationTitle("Input Activity")
                .navigationBarTitleDisplayMode(.inline)
                .padding(.horizontal, 30)
                .padding(.top, 5)
            }
        }
    }
}


struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
