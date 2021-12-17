import SwiftUI
 
struct CategoryHome: View {
    @EnvironmentObject var userData: UserData
    @State private var showingProfile = false
    
    var body: some View {
        NavigationView{
            List {
                userData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(userData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: userData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Featured")
            .toolbar {  // NavigationのToolbarにビューを追加
                            Button(action: { showingProfile.toggle() }) {
                                Image(systemName: "person.crop.circle")
                                    .accessibilityLabel("User Profile")
                            }
                        }
                        .sheet(isPresented: $showingProfile) {  // showingProfile == trueならばシートを開く
                            ProfileHost()
                                .environmentObject(userData)
                        }
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
                    .environmentObject(UserData())
    }
}
