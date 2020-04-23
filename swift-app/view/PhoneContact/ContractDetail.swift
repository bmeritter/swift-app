import SwiftUI
import Contacts

struct ContractDetail: View {
    var phone: PhoneContact;
    
    var body: some View {
        VStack {
            Text(phone.name! as String)
            Button(action: {
                // validation of phone number not included
                let dash = CharacterSet(charactersIn: "-")

                let cleanString =
                   (self.phone.phoneNumber[1] as String).trimmingCharacters(in: dash)

                let tel = "tel://"
                let formattedString = tel + cleanString
                let url: NSURL = NSURL(string: formattedString)!
                print(url)

                UIApplication.shared.open(url as URL)
            }){
                Text(phone.phoneNumber[1])
            }
        }.navigationBarTitle("详情")
    }
}
