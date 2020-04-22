import SwiftUI

struct CameraView: View {
    
    @State var showImagePicker: Bool = false
    @State var showActionSheet = false
    @State private var image: Image? = nil
    @State var sourceType: Int = 0
    
    
    var body: some View {
        ZStack {
            VStack {
                image?.resizable().scaledToFit()
                
                CameraButtonView(showActionSheet: $showActionSheet)
                
            }.actionSheet(isPresented: $showActionSheet, content: { () -> ActionSheet in
                ActionSheet(title: Text("select image"), message: Text("please select image"), buttons: [
            
                    ActionSheet.Button.default(Text("Camera"), action: {
                        self.sourceType = 0
                        self.showImagePicker.toggle()
                    }),
                    ActionSheet.Button.default(Text("Photo library"), action: {
                        self.sourceType = 1
                        self.showImagePicker.toggle()
                    }),
                    ActionSheet.Button.cancel()
                ])
            })
            if showImagePicker {
                ImagePicker(isVisible: $showImagePicker, image: $image, sourceType: sourceType)
            }
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
