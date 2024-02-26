import SwiftUI

struct ProgressionBar: View {
    var currentIndex: Int
    var totalCount: Int
    var filledColor: LinearGradient = LinearGradient(gradient: Gradient(colors: [.blue, .blue, .blue, .mint]), startPoint: .leading, endPoint: .trailing)
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle() // Background of the progression bar
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: 2)
                
                Rectangle() // Filled portion of the progression bar
                    .fill(filledColor)
                    .frame(width: geometry.size.width * CGFloat(currentIndex + 1) / CGFloat(totalCount), height: 2)
                    .animation(.linear, value: currentIndex)
            }
        }
        .frame(height: 2)
        .shadow(radius: 1)
    }
}
