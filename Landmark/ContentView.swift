import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured // 初期はFeaturedタブ
    
    //　Tabに関する列挙型を定義
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
            TabView(selection: $selection) {
                CategoryHome()
                    .tabItem {
                        Label("Featured", systemImage: "star")
                    }
                    .tag(Tab.featured)
     
                LandmarkList()
                    .tabItem {
                        Label("List", systemImage: "list.bullet")
                    }
                    .tag(Tab.list)
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())
    }
}
