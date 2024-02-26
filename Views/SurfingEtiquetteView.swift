import SwiftUI

//etiquette

struct SurfingEdView: View {
    @Environment(\.presentationMode) var presentationMode
    let slides: [SlideData] 
    var body: some View {
        ScrollView {
            VStack {
                Text("Surfing Etiquette")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 10)
                
                Spacer()
                
                Text("With everything we know now, one final lesson on surfing etiquette, which is essential for safety, respect, and enjoyment in the surfing community. With this, you may take your surfing journey to the waves!")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)
                
                Divider()
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Right of Way")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text("The surfer closest to the peak of the wave (the highest point where the wave starts breaking) has the right of way. This rule is crucial because it helps prevent collisions. When everyone knows who has the priority on a wave, it reduces the chances of surfers running into each other, which can lead to injuries or broken equipment. It also ensures a fair distribution of waves among surfers.")
                        .font(.body)
                        .lineSpacing(4)
                    
                    
                    Text("Drop in")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text("Dropping in is when a surfer catches a wave already being ridden by another surfer. This not only violates the right of way but can also be extremely dangerous, leading to potential collisions.")
                        .font(.body)
                        .lineSpacing(4)
                    
                    
                    Text("Respect the Lineup")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text("The lineup is the area where surfers wait for waves. It's important to wait your turn and not paddle around other surfers to get to a wave first.")
                        .font(.body)
                        .lineSpacing(4)
                    
                    Text("Thank You!")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                }
                .padding()
                
                Divider()
                
                HStack(spacing: 20) {
                    // nulled for Space
                    //if allocated, replace
                    Image("null")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Image("null")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Image("null")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                .padding(.vertical)
            }
            .padding()
            NavigationControl(forwardView: {
                HistoryView(slides: slides)
            }, goBackAction: {
                presentationMode.wrappedValue.dismiss() 
            }, forwardButtonText: "Back to Surfing History") 
        }
    }
}
