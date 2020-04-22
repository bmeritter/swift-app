import SwiftUI
import ContactsUI

struct ContentView: View {
    
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: PhoneContacts()) {
                Text("通讯录")
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
