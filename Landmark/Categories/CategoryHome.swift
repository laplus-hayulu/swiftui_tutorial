//
//  CategoryHome.swift
//  Landmark
//
//  Created by 辻大地 on 2021/12/14.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        NavigationView {
            List {
                            ForEach(userData.categories.keys.sorted(), id: \.self) { key in
                                Text(key)
                            }
                        }
            .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
                    .environmentObject(UserData())
    }
}
