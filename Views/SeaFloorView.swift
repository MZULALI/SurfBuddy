import SwiftUI


struct SeaFloorView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var currentImageIndexForSeaFloorView = 0
    let images = ["SeaFloor0, SeaFloor1, SeaFloor2"]
    @State private var showARView = false
    let slides: [SlideData] 
    
    var body: some View {
        ScrollView{
            
            VStack {
                Text("Sea Floor")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 40)
                
                Spacer()
                
                Text("Understanding the sea floor's topography is crucial for predicting wave behavior, offering surfers insights into the ocean's most dynamic environments.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.horizontal)

                
                
            }
            .padding()
            
            ProgressionBar(currentIndex: currentImageIndexForSeaFloorView, totalCount: 3)
            
            SlideTitleStyle(text: slidesForSeaFloorView[currentImageIndexForSeaFloorView].title)
            
            ImageSlider(images: slidesForSeaFloorView.map { $0.imageName }, currentImageIndex: $currentImageIndexForSeaFloorView)
            
            
            .padding(.horizontal) 
            .padding(.vertical)

            BodyText(text: slidesForSeaFloorView[currentImageIndexForSeaFloorView].text) 
            
            Spacer()
            
            NavigationControl(forwardView: {
                WindView(slides: slides)
            }, goBackAction: {
                presentationMode.wrappedValue.dismiss() 
            }, forwardButtonText: "Next: Wind Direction") 
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(UIColor.systemBackground))
        .edgesIgnoringSafeArea(.all)
    }
}
