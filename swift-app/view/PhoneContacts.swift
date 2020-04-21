import SwiftUI
import ContactsUI

struct PhoneContacts: View {
    var phones: [PhoneContact] = [PhoneContact]()
    
    init() {
        let status = CNContactStore.authorizationStatus(for: .contacts)
        
        if status == .notDetermined {
            let contactStore = CNContactStore();
            contactStore.requestAccess(for: .contacts) { (granted: Bool, error: Error?) in
                if granted {
                    print("success")
                }
            }
        }
        self.phones = self.fetchPhoneContacts();
    }
    
    mutating func fetchPhoneContacts() -> [PhoneContact] {
        let contactStore = CNContactStore()
        
        let contractFetchRequest = CNContactFetchRequest(keysToFetch: [CNContactGivenNameKey as CNKeyDescriptor, CNContactFamilyNameKey as CNKeyDescriptor, CNContactMiddleNameKey as CNKeyDescriptor, CNContactEmailAddressesKey as CNKeyDescriptor ,CNContactPhoneNumbersKey as CNKeyDescriptor])
        var contacts: [PhoneContact] = [PhoneContact]()
        do {
            try contactStore.enumerateContacts(with: contractFetchRequest, usingBlock: {
                (contact, error) -> Void in
                contacts.append(PhoneContact.init(contact: contact))
            })
        } catch _ as NSError {
            print("error")
        }
        
        return contacts
    }
    
    var body: some View {
        List(phones, id: \.name) { phone in
            NavigationLink(destination: ContractDetail()) {
                ContactRow(phone: phone)
            }
        }
    }
}

struct PhoneContacts_Previews: PreviewProvider {
    static var previews: some View {
        PhoneContacts()
    }
}
