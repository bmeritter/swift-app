import Foundation
import ContactsUI

class PhoneContact: NSObject {
    var name: String?
    var avatarData: Data?
    var phoneNumber: [String] = [String()]
    var email: [String] = [String()]
    
    init(contact: CNContact) {
        name = contact.familyName + " " + contact.givenName
    }
    
    override init() {
        super.init();
    }
    
}
