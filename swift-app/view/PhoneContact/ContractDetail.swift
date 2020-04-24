import SwiftUI
import Contacts

struct ContractDetail: View {
    var phone: PhoneContact;
    
    var body: some View {
        VStack {
            Text(phone.name! as String)
            Button(action: {
                let number = self.phone.phoneNumber[1] as String
                
                let cleanString = number.replacingOccurrences(of: " ", with: "")
                let formattedString: String = "tel://" + cleanString
                let url: URL = URL(string: formattedString)!
                
                if UIApplication.shared.canOpenURL(url) {
                    UIApplication.shared.open(url, options: [:], completionHandler: {
                        (success) in
                        print("success", success)
                    })
                }

                
            
            }
            ){
                Text(phone.phoneNumber[1])
            }
        }.navigationBarTitle("详情")
    }
}
