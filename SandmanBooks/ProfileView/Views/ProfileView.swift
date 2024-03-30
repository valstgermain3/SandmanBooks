//
//  ProfileView.swift
//  SandmanBooks
//
//  Created by Valerie St. Germain on 3/28/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List {
            
            Section {
                HStack {
                    
                    Text(User.testUser.initials)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
                        .clipShape(Circle())
                    
                    VStack {
                        Text(User.testUser.fullName)
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                        
                        Text(User.testUser.email)
                            .font(.footnote)
                            .foregroundColor(.gray)
                        
                    } // end of VStack
                    .padding(.horizontal, 10)
                    
                } // end of HStack
                
                
            } // end of section
            
            Section("General") {
                
                HStack {
                    
                    SettingsRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
                    
                    Spacer()
                    
                    Text("1.0.0")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    
                } // end of HStack
                
            } // end of section
            
            Section("Account") {
                
                Button {
                    
                } label: {
                    
                    SettingsRowView(imageName: "arrow.left.circle.fill", title: "Sign Out", tintColor: Color(.red))
                    
                } // end of button
                
                
            } // end of section
            
            
        } // end of List
    }
}

#Preview {
    ProfileView()
}
