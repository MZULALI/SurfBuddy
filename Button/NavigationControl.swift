import SwiftUI

struct NavigationControl<ForwardView: View>: View {
    let forwardView: () -> ForwardView
    let goBackAction: () -> Void
    var backButtonText: String = "Back"
    var forwardButtonText: String = "Next"
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                // Back button
                Button(action: goBackAction) {
                    HStack {
                        Image(systemName: "arrow.left") 
                    }
                    .padding()
                    .frame(width: geometry.size.width * 0.15, height: 50)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                }
                
                // Forward button
                NavigationLink(destination: forwardView()) {
                    Text(forwardButtonText)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: geometry.size.width * 0.85, height: 50) // Adjusted for spacer
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
        }
        .frame(height: 50)
        .padding(.horizontal) // Apply padding for the whole HStack
        .padding(.bottom) // Keep inside the safe area
    }
}
