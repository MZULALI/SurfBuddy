import SwiftUI

struct ImageSlider: View {
    let images: [String]
    @Binding var currentImageIndex: Int
    @State private var buttonOpacity: Double = 0.7
    private let inactiveOpacity: Double = 0.2 // Adjusted for better visibility
    private let activeOpacity: Double = 0.7
    @State private var timer: Timer?
    
    var body: some View {
        ZStack {
            if !images.isEmpty, images.indices.contains(currentImageIndex) {
                Image(images[currentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 400)
                    .clipped()
                    .cornerRadius(20)
                    .transition(.asymmetric(insertion: .slide, removal: .slide))
                    .animation(.easeInOut, value: currentImageIndex)
                    .onAppear {
                        startTimer()
                    }
                    .overlay(
                        HStack {
                            buttonView(systemName: "chevron.left", action: {
                                userDidInteract()
                                if currentImageIndex > 0 {
                                    withAnimation {
                                        
                                        
                                        currentImageIndex -= 1
                                    }
                                }
                            }, disabled: currentImageIndex == 0)
                            
                            Spacer()
                            
                            buttonView(systemName: "chevron.right", action: {
                                userDidInteract()
                                if currentImageIndex < images.count - 1 {
                                    currentImageIndex += 1
                                }
                            }, disabled: currentImageIndex == images.count - 1)
                        }
                            .padding(.horizontal, 5), alignment: .center
                    )
            }
        }
        .frame(width: 400, height: 400)
        .padding(.horizontal)
    }
    
    @ViewBuilder
    private func buttonView(systemName: String, action: @escaping () -> Void, disabled: Bool) -> some View {
        Button(action: action) {
            Image(systemName: systemName)
                .padding()
                .foregroundColor(.white)
                .background(Color.black.opacity(disabled ? inactiveOpacity : buttonOpacity))
                .clipShape(Circle())
        }
        .frame(width: 50, height: 400)
        .disabled(disabled)
        .animation(.easeInOut(duration: 0.5), value: buttonOpacity) // Animate opacity changes

        
    }
    
    private func startTimer() {
        stopTimer() 
        timer = Timer.scheduledTimer(withTimeInterval: 4.0, repeats: false) { _ in
            withAnimation {
                buttonOpacity = inactiveOpacity
            }
        }
    }
    
    private func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    private func userDidInteract() {
        withAnimation {
            buttonOpacity = activeOpacity
        }
        startTimer() // Restart the timer whenever the user interacts
    }
}
