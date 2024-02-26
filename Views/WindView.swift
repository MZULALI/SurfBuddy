import SwiftUI


struct WindView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var currentImageIndexForWindView = 0
    let images = ["Wind0, Wind1, Wind2"]
    @State private var showARView = false
    let slides: [SlideData] 
    
    var body: some View {
        ScrollView{
            
            VStack {
                Text("Wind Direction")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 40)
                
                Spacer()
                
                Text("Wind patterns significantly influence surfing by altering wave quality and formation, making the understanding of these atmospheric forces essential for surfers.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.horizontal)

                
                
            }
            .padding()
            
            ProgressionBar(currentIndex: currentImageIndexForWindView, totalCount: 3)
            
            SlideTitleStyle(text: slidesForWindView[currentImageIndexForWindView].title)
            
            ImageSlider(images: slidesForWindView.map { $0.imageName }, currentImageIndex: $currentImageIndexForWindView)
            
            .padding(.horizontal) 
            .padding(.vertical)

            BodyText(text: slidesForWindView[currentImageIndexForWindView].text) 
            
            Spacer()
            
            NavigationControl(forwardView: {
                TideView(slides: slides)
            }, goBackAction: {
                presentationMode.wrappedValue.dismiss() 
            }, forwardButtonText: "Next: Tide") 
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(UIColor.systemBackground))
        .edgesIgnoringSafeArea(.all)
    }
}
