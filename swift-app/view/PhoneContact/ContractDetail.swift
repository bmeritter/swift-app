import SwiftUI

struct ContractDetail: View {
    var phone: PhoneContact;
    
    var body: some View {
        VStack {
            Text(phone.name! as String)
        }.navigationBarTitle("详情")
    }
}
