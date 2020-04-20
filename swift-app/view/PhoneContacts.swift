import SwiftUI

struct Phone {
    var id: String
    var name: String
    var phone: String
}

struct PhoneContacts: View {
    var phones: [Phone] = [
        Phone(id: "1", name: "test1", phone: "23423432"),
        Phone(id: "2", name: "test2", phone: "23423432"),
        Phone(id: "3", name: "test3", phone: "23423432"),
        Phone(id: "3", name: "test3", phone: "23423432"),
        Phone(id: "3", name: "test3", phone: "23423432"),
        Phone(id: "3", name: "test3", phone: "23423432"),
        Phone(id: "3", name: "test3", phone: "23423432"),
        Phone(id: "3", name: "test3", phone: "23423432"),
        Phone(id: "3", name: "test3", phone: "23423432"),
        Phone(id: "3", name: "test3", phone: "23423432"),
    ]
    
    var body: some View {
        List(phones, id: \.id) { phone in
           
                HStack {
                Image("avatar").resizable().frame(width: 100, height: 100, alignment: .center).clipShape(Circle())
                VStack(alignment: .leading) {
                    Spacer()
                    Text(phone.name).font(.title)
                    Spacer()
                    Text(phone.phone)
                    Spacer()
                }
                Spacer()
                Image(systemName: "chevron.right")
            }
        }
    }
}

struct PhoneContacts_Previews: PreviewProvider {
    static var previews: some View {
        PhoneContacts()
    }
}
