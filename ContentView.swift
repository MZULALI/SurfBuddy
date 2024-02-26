//Created by Muhammad Zulali for 
//Apple in California <3

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "figure.surfing")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
                    .padding(.top, 100)
                
                Text("Welcome to Surf Buddy!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.top, 20)
                
                Text("Conquer the Waves: Your Ultimate Guide to\n Surfing Mastery")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                
                // Icons and texts
                HStack(spacing: 20) {
                    VStack {
                        Image(systemName: "book.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.blue)
                        Text("History")
                            .font(.caption)
                    }
                    VStack {
                        Image(systemName: "heart")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.blue)
                        Text("Health")
                            .font(.caption)
                    }
                    VStack {
                        Image(systemName: "sun.max.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.blue)
                        Text("Enjoy")
                            .font(.caption)
                    }
                }
                .padding(.top, 20)
                
                NavigationLink(destination: HistoryView(slides: slidesForSecondView)) {
                    Text("Get Started")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 280, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.top, 30)
                
                Spacer()
            }
        }
    }
}
