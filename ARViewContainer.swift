import SwiftUI
import ARKit
import RealityKit

struct ARViewContainer: UIViewRepresentable {
    var arModelName: String // Use this name to load the correct model
    
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)
        
        // Attempt to load the model with the given name
        if let entity = try? Entity.load(named: arModelName) {
            // If successful, place the entity in the AR scene
            let anchor = AnchorEntity()
            anchor.addChild(entity)
            arView.scene.addAnchor(anchor)
        } else {
            // If the model couldn't be loaded, print an error message
            print("Failed to load the AR model named \(arModelName).")
        }
        
        // Start the AR session with a basic configuration
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = .horizontal
        arView.session.run(config)
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
}
