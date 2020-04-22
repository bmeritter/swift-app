import SwiftUI
import ContactsUI

struct ContentView: View {
    
    
    var body: some View {
        NavigationView {
            HStack {
                 Spacer()
                NavigationLink(destination: PhoneContacts()) {
                    Text("Contact")
                }
                Spacer()
                NavigationLink(destination: CameraView()) {
                    Text("Camera")
                }
                Spacer()
            }
        }.navigationViewStyle(StackNavigationViewStyle())
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
