import SwiftUI

struct WaveView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var currentImageIndexForWaveView = 0
    let images = ["WaveHeight1", "WaveHeight2", "WaveHeight3","WaveHeight4","WaveHeight5","WaveHeight6","WaveHeight7"]
    @State private var showARView = false
    let slides: [SlideData] 
    
    var body: some View {
        ScrollView{
            
            VStack {
                Text("Wave Height")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 40)
                
                Spacer()
                
                Text("Understanding the scale and power behind the waves we ride.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.horizontal)

                
                
            }
            .padding()
            
            ProgressionBar(currentIndex: currentImageIndexForWaveView, totalCount: images.count)
            
            SlideTitleStyle(text: slidesForWaveView[currentImageIndexForWaveView].title)
            
            ImageSlider(images: slidesForWaveView.map { $0.imageName }, currentImageIndex: $currentImageIndexForWaveView)
            
            .padding(.horizontal)
            .padding(.vertical)

            
            BodyText(text: slidesForWaveView[currentImageIndexForWaveView].text) 
            
            Spacer()
            
           
            NavigationControl(forwardView: {
                SeaFloorView(slides: slides)
            }, goBackAction: {
                presentationMode.wrappedValue.dismiss() 
            }, forwardButtonText: "Next: Sea Floor") 
        }

        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(UIColor.systemBackground))
        .edgesIgnoringSafeArea(.all)
    }
}
