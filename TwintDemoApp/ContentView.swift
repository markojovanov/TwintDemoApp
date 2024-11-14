//
//  ContentView.swift
//  TwintDemoApp
//
//  Created by Marko Jovanov on 5.11.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("From Twint to Moba") {
                openDemoTestThreeApp()
            }
        }
        .padding()
        .onOpenURL { url in
            print(url)
        }
    }

    private func openDemoTestThreeApp() {
            if let url = URL(string: "map4vanilla://twint/authorize?client_id=dsadsa&response_type=code&redirect_uri=twintvanilla://callback&state=1234zyx&scope=https://test.ch/scopes/registration&code_challenge=dasdas&code_challenge_method=S256") {
                if UIApplication.shared.canOpenURL(url) {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                } else {
                    print("twintvanilla app is not installed.")
                }
            }
        }
}

#Preview {
    ContentView()
}
