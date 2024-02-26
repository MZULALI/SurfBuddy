import SwiftUI

struct HistoryView: View {
    @Environment(\.presentationMode) var presentationMode
    let slides: [SlideData] 
    var body: some View {
        ScrollView {
            VStack {
                Text("Surfing History")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 10)
                
                Spacer()
                
                Text("The legacy of rich cultural tradition.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)
                
                Divider()
                
                VStack(alignment: .leading, spacing: 20) {
                    Text("Origins of Surfing")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text("Surfing's origins are found in the Pacific Islands, where it was not merely a pastime but a pivotal part of the culture. Indigenous Polynesians are credited with the invention of surfing, and it held a significant place in their society.")
                        .font(.body)
                        .lineSpacing(4)

                    
                    Text("Cultural Significance")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text("In Hawaiian culture, surfing was more than a sport, it was a way of life. Chiefs and commoners alike participated in surfing, and was a source of pride, status, and spiritual alignment. Surfing contests were held to settle disputes, establish hierarchy, and honor the gods, with prayers and offerings made to ask for good waves.")
                        .font(.body)
                        .lineSpacing(4)

                    
                    Text("Modern Surfing")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text("Today, surfing has spread far beyond its Polynesian roots, becoming a global sport that attracts millions of enthusiasts. However, the spirit of surfing remains deeply connected to its origins, with modern surf culture emphasizing a profound respect for the ocean and the environment.\n\nSurfing has also become a vehicle for social change, with organizations using the sport to promote environmental conservation, mental health, and inclusivity. The World Surf League, for example, has initiatives focused on sustainability and equality, ensuring that surfing leads by example in addressing global challenges.")
                        .font(.body)
                        .lineSpacing(4)

                }
                .padding()
                
                Divider()
                
                HStack() {
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
            }
            NavigationControl(forwardView: {
                SurfboardView(slides: slides)
            }, goBackAction: {
                presentationMode.wrappedValue.dismiss() // Action to go back
            }, forwardButtonText: "Next: Surfboards") 
        }
    }
}
