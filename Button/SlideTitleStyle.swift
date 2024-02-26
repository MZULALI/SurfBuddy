import SwiftUI

struct SlideTitleStyle: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title2)
            .transition(.slide) 
            .fontWeight(.medium)
    }
}
