import SwiftUI


struct SurfboardView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var currentImageIndexForSurfboardView = 0
    let images = ["Surfboard0, Surfboard1, Surfboard2"]
    @State private var showARView = false
    let slides: [SlideData] 
    
    var body: some View {
        ScrollView{
            
            VStack {
                Text("Surfboards")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 40)
                
                Spacer()
                
                Text("Surfboards are evolving rapidly, transforming the surfing experience with innovative designs. These advancements promise to unlock new possibilities for wave riders")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.horizontal)

                
                
            }
            .padding()
            
            ProgressionBar(currentIndex: currentImageIndexForSurfboardView, totalCount: 3)
            
            SlideTitleStyle(text: slidesForSurfboardView[currentImageIndexForSurfboardView].title)
            
            ImageSlider(images: slidesForSurfboardView.map { $0.imageName }, currentImageIndex: $currentImageIndexForSurfboardView)
            
            
            .padding(.horizontal) 
            .padding(.vertical)
            
            BodyText(text: slidesForSurfboardView[currentImageIndexForSurfboardView].text) 
            
            Spacer()
            
            NavigationControl(forwardView: {
                WaveView(slides: slides)
            }, goBackAction: {
                presentationMode.wrappedValue.dismiss() 
            }, forwardButtonText: "Next: Wave Height") 
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(UIColor.systemBackground))
        .edgesIgnoringSafeArea(.all)
    }
}
