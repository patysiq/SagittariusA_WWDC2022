import SwiftUI
import UIKit

struct ContentView: View {
    
    @State private var showingInfo1 = false
    @State private var showinginfo2 = false
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
        UITabBar.appearance().layer.borderColor = UIColor.clear.cgColor
        UITabBar.appearance().clipsToBounds = true
        Sounds.playAudio()
    }
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            TabView {
                HomeView()
                    .tabItem {
                        Label("Katie Bourman", systemImage: "face.smiling")
                    }
                VStack(spacing: 0) {
                    KatieView()
                        .edgesIgnoringSafeArea(.all)
                    Info1View()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 6, alignment: .center)
                }
                    .tabItem {
                        Label("Planets", systemImage: "globe.americas")
                    }
                SagittariusA()
                    .tabItem {
                        Label("Sagittarius A", systemImage: "star")
                    }
                VStack(spacing: 0) {
                    GameScene()
                        .edgesIgnoringSafeArea(.all)
                    Info2View()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 6, alignment: .center)
                }
                .tabItem {
                    Label("Black Hole", systemImage: "capsule")
                }
                MyView()
                    .tabItem {
                        Label("About Me", systemImage: "person")
                    }
            }
            .accentColor(Color.orange)
        }

    }
}
