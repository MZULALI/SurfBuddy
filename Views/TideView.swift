import SwiftUI


struct TideView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var currentImageIndexForTideView = 0
    let images = ["Tide0, Tide1, Tide2"]
    @State private var showARView = false
    let slides: [SlideData] 
    
    var body: some View {
        ScrollView{
            
            VStack {
                Text("Tide")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 40)
                
                Spacer()
                
                Text("The Tides play a critical role in shaping surfing conditions, with their rhythmic changes dictating the best times and spots for catching waves.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                
                
            }
            .padding()
            
            ProgressionBar(currentIndex: currentImageIndexForTideView, totalCount: 3)
            
            SlideTitleStyle(text: slidesForTideView[currentImageIndexForTideView].title)
            
            ImageSlider(images: slidesForTideView.map { $0.imageName }, currentImageIndex: $currentImageIndexForTideView)
            
            .padding(.horizontal) 
            .padding(.vertical)

            BodyText(text: slidesForTideView[currentImageIndexForTideView].text) 
            
            Spacer()
            
            NavigationControl(forwardView: {
                SurfingEdView(slides: slides)
            }, goBackAction: {
                presentationMode.wrappedValue.dismiss() 
            }, forwardButtonText: "Next: Surfing Etiquette ") 
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(UIColor.systemBackground))
        .edgesIgnoringSafeArea(.all)
    }
}
