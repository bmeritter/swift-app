import SwiftUI

struct ContactRow: View {
    var phone: PhoneContact;
    
    var body: some View {
        HStack {
           Image("avatar").resizable().frame(width: 50, height: 50, alignment: .center).clipShape(Circle())
           VStack(alignment: .leading) {
               Spacer()
            Text(phone.name! as String)
               Spacer()
            Text(phone.phoneNumber.joined())
               Spacer()
           }
        }
    }
}
