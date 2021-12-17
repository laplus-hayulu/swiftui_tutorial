//
//  ProfileHost.swift
//  Profileを管理
//
//  Created by 辻大地 on 2021/12/14.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @EnvironmentObject var userData: UserData
//    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                EditButton()
            }
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: userData.profile)
            } else {
                Text("Profile Editor")
            }
            
        }
        .padding()
    }
        
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(UserData())
    }
}
