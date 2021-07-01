// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contact information that the DRT can use to contact you if you have proactive engagement enabled, for escalations to the DRT and to initiate proactive customer support.</p>
public struct EmergencyContact: Equatable {
    /// <p>Additional notes regarding the contact. </p>
    public let contactNotes: String?
    /// <p>The email address for the contact.</p>
    public let emailAddress: String?
    /// <p>The phone number for the contact.</p>
    public let phoneNumber: String?

    public init (
        contactNotes: String? = nil,
        emailAddress: String? = nil,
        phoneNumber: String? = nil
    )
    {
        self.contactNotes = contactNotes
        self.emailAddress = emailAddress
        self.phoneNumber = phoneNumber
    }
}

extension EmergencyContact: CustomDebugStringConvertible {
    public var debugDescription: String {
        "EmergencyContact(contactNotes: \(String(describing: contactNotes)), emailAddress: \(String(describing: emailAddress)), phoneNumber: \(String(describing: phoneNumber)))"}
}