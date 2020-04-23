import Foundation
import ContactsUI

class PhoneContact: NSObject {
    var name: String?
    var avatarData: Data?
    var phoneNumber: [String] = [String()]
    var email: [String] = [String()]
    
    init(contact: CNContact) {
//        print(contact)
        name = contact.familyName + " " + contact.givenName
        
        for number in contact.phoneNumbers {
            phoneNumber.append(number.value.stringValue)
        }
        
        for mail in contact.emailAddresses {
            print(mail.value)
//            email.append(email.value as String)
        }
    }
    
    override init() {
        super.init();
    }
    
}
