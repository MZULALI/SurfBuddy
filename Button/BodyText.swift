import SwiftUI

struct BodyText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.body)
            .lineSpacing(5)
            .padding() 
            .background(LinearGradient(gradient: Gradient(colors: [Color.indigo.opacity(0.2), Color.indigo.opacity(0.2)]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(10)
            .padding([.leading, .trailing, .bottom]) 
            .transition(.slide) 
    }
}
