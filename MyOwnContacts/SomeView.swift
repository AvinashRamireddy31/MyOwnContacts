//
//  SomeView.swift
//  MyOwnContacts
//
//  Created by Avinash Reddy on 01/10/22.
//

import SwiftUI
import Contacts
import ContactsUI

struct SomeView: View {
    @State var contact: CNContact?
    
    var body: some View {
        VStack {
            Text("Selected: \(contact?.givenName ?? "")")
            ContactPickerButton(contact: $contact) {
                Label("Select Contact", systemImage: "person.crop.circle.fill")
                    .fixedSize()
            }
            .fixedSize()
            .buttonStyle(.borderedProminent)
        }.onOpenURL{url in
            print(url)
        }
    }
}

struct SomeView_Previews: PreviewProvider {
    static var previews: some View {
        SomeView()
    }
}

public struct ContactPickerButton<Label: View>: UIViewControllerRepresentable {
    public class Coordinator: NSObject, CNContactPickerDelegate {
        var onCancel: () -> Void
        var viewController: UIViewController = .init()
        var picker = CNContactPickerViewController()
        
        @Binding var contact: CNContact?
        
        // Possible take a binding
        public init<Label: View>(contact: Binding<CNContact?>, onCancel: @escaping () -> Void, @ViewBuilder content: @escaping () -> Label) {
            self._contact = contact
            self.onCancel = onCancel
            super.init()
            let button = Button<Label>(action: showContactPicker, label: content)
            
            let hostingController: UIHostingController<Button<Label>> = UIHostingController(rootView: button)
            
            hostingController.view?.sizeToFit()
            
            (hostingController.view?.frame).map {
                hostingController.view!.widthAnchor.constraint(equalToConstant: $0.width).isActive = true
                hostingController.view!.heightAnchor.constraint(equalToConstant: $0.height).isActive = true
                viewController.preferredContentSize = $0.size
            }
                
            hostingController.willMove(toParent: viewController)
            viewController.addChild(hostingController)
            viewController.view.addSubview(hostingController.view)

            hostingController.view.anchor(to: viewController.view)
            
            picker.delegate = self

        }
        
        func showContactPicker() {
            viewController.present(picker, animated: true)
        }
        
        public func contactPickerDidCancel(_ picker: CNContactPickerViewController) {
            onCancel()
        }
        
        public func contactPicker(_ picker: CNContactPickerViewController, didSelect contact: CNContact) {
            self.contact = contact
        }
        
        func makeUIViewController() -> UIViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<ContactPickerButton>) {
        }
    }
    
    @Binding var contact: CNContact?
    
    @ViewBuilder
    var content: () -> Label

    var onCancel: () -> Void
    
    public static func defaultContent() -> SwiftUI.Label<Text, Image> {
        SwiftUI.Label("Select Contact", systemImage: "person.crop.circle.fill")
    }
    
    public init(contact: Binding<CNContact?>, onCancel: @escaping () -> () = {}, @ViewBuilder content: @escaping () -> Label) {
        self._contact = contact
        self.onCancel = onCancel
        self.content = content
    }
    
    public func makeCoordinator() -> Coordinator {
        .init(contact: $contact, onCancel: onCancel, content: content)
    }
    
    public func makeUIViewController(context: Context) -> UIViewController {
        context.coordinator.makeUIViewController()
    }
    
    public func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        context.coordinator.updateUIViewController(uiViewController, context: context)
    }

}

fileprivate extension UIView {
    func anchor(to other: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.topAnchor.constraint(equalTo: other.topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: other.bottomAnchor).isActive = true
        self.leadingAnchor.constraint(equalTo: other.leadingAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: other.trailingAnchor).isActive = true
    }
}
