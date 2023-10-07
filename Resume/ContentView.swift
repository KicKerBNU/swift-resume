//
//  ContentView.swift
//  Resume
//
//  Created by Everton Buzzi on 07/10/2023.
//

import SwiftUI

struct ContentView: View {
    let badgeData = ["VueJS", "Css", "Html", "Swift", "JavaScript", "Github", "Gitlab", "Material Design", "MaterializeCSS", "NodeJs", "Git", "Fork", "Quasar", "DevTools", "RestAPI", "Agile", "Scrum", "Kanban"]
    
    var body: some View {
        
        HStack {
            Image("everton")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(30)
                .padding()
                
            VStack(alignment: .leading) {
                Text("Everton Buzzi")
                    .bold()
                Text("Fronteend Developer")
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.gray)
                Text("EU Citizen currently living in Lisbon with more then four years of experience in the technology industry. Involved in build new UI Interfaces, testing, working together with backend developers to achieve the best result.")
                    .font(.system(size: 8))
            }
        }
        ZStack {
            Color.gray.opacity(0.2)
            HStack {
                Text("✉️")
                Text("evertonbuzzi@gmail.com")
                    .font(.system(size: 6))
                Text("📱")
                Text("(351)912351771")
                    .font(.system(size: 8))
                Text("📍")
                Text("Lisbon, Portugal")
                    .font(.system(size: 8))
            }
            
        }.aspectRatio(contentMode: .fit)
            
        HStack(alignment: .top){
            VStack {
                Text("Work Experience")
                    .fontWeight(.bold)
                    .bold()
                Divider()
                Text("Frontend Developer")
                    .bold()
                    .opacity(0.8)
                Text("Neobrain").opacity(0.7)
                HStack {
                    Text("07/2023 - Present")
                        .font(.system(size: 8))
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Text("Paris, France")
                        .font(.system(size: 8))
                        .multilineTextAlignment(.trailing)
                }
                Text("HR SaaS with AI integration")
                    .font(.system(size: 8)).padding(.top, 4)
                Divider()
                Text("Frontend Developer")
                    .bold()
                    .opacity(0.8)
                Text("Masterlink").opacity(0.7)
                HStack {
                    Text("05/2022 - 07/2023")
                        .font(.system(size: 8))
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Text("Lisbon, Portugal")
                        .font(.system(size: 8))
                        .multilineTextAlignment(.trailing)
                }
                Text("Template Generator Software House")
                    .font(.system(size: 8)).padding(.top, 4)
                Divider()
                Text("Frontend Developer")
                    .bold()
                    .opacity(0.8)
                Text("Myrp").opacity(0.7)
                HStack {
                    Text("12/2019 - 05/2022")
                        .font(.system(size: 8))
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Text("Blumenau, Brazil")
                        .font(.system(size: 8))
                        .multilineTextAlignment(.trailing)
                }
                Text("ERP SaaS - Omnichannel")
                    .font(.system(size: 8)).padding(.top, 4)
                Divider()
                Text("Intern")
                    .bold()
                    .opacity(0.8)
                Text("Be Sistemas").opacity(0.7)
                HStack {
                    Text("05/2019 - 12/2019")
                        .font(.system(size: 8))
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Text("Blumenau, Brazil")
                        .font(.system(size: 8))
                        .multilineTextAlignment(.trailing)
                }
                Text("BeMall CRM Shopping Center")
                    .font(.system(size: 8)).padding(.top, 4)
            }
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            VStack {
                Text ("Skills")
                    .fontWeight(.bold)
                Divider()
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 50, maximum: .infinity))], spacing: 10) {
                    ForEach(badgeData, id: \.self) { badge in
                        Text(badge)
                            .font(.system(size: 10))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                            .background(Color.red)
                            .cornerRadius(15)
                            
                        
                    }
                }
            }
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        }
        
        HStack(alignment: .top){
            VStack {
                Text("Education")
                    .fontWeight(.bold)
                    .bold()
                Divider()
                Text("Bachelor of information System")
                    .opacity(0.4)
                    .font(.system(size: 12))
                HStack {
                    Text("01/2020 - Present")
                        .font(.system(size: 8))
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Text("Indaial, Brazil")
                        .font(.system(size: 8))
                        .multilineTextAlignment(.trailing)
                }
                .padding(.horizontal)
                
                
            }
            VStack {
                Text ("Languages")
                    .fontWeight(.bold)
                Divider()
                Text("Portuguese")
                    .opacity(0.4)
                    .font(.system(size: 12))
                Text("English")
                    .opacity(0.4)
                    .font(.system(size: 12))
            }
        }
        Spacer()
    }
}

#Preview {
    ContentView()
}
