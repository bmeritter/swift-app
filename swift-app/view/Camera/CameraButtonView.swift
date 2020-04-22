import SwiftUI

struct CameraButtonView: View {
    @Binding var showActionSheet: Bool

    var body: some View {
        Button(action: {
            self.showActionSheet.toggle()
        }) {
            Image(systemName: "camera.fill")
        }
        
    }
}

struct CameraButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CameraButtonView(showActionSheet: .constant(false)).previewLayout(.sizeThatFits).padding()
    }
}
