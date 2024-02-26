import SwiftUI

struct ARButton: View {
    var action: () -> Void
    var label: String
    var systemImageName: String = "arkit" // Default system image name
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: systemImageName)
                    .font(.title)
                Text(label)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.8)
            }
            .padding()
            .frame(height: 40)
            .frame(maxWidth: 100)
            .background(LinearGradient(gradient: Gradient(colors: [Color.mint, Color.mint.opacity(0.5)]), startPoint: .leading, endPoint: .trailing))
            .foregroundColor(.white)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.white, lineWidth: 2)
            )
            .shadow(radius: 10)
        }
        .padding(.horizontal)
    }
}
