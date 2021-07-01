// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains information about the phone configuration settings for a user.</p>
public struct UserPhoneConfig: Equatable {
    /// <p>The After Call Work (ACW) timeout setting, in seconds.</p>
    public let afterContactWorkTimeLimit: Int
    /// <p>The Auto accept setting.</p>
    public let autoAccept: Bool
    /// <p>The phone number for the user's desk phone.</p>
    public let deskPhoneNumber: String?
    /// <p>The phone type.</p>
    public let phoneType: PhoneType?

    public init (
        afterContactWorkTimeLimit: Int = 0,
        autoAccept: Bool = false,
        deskPhoneNumber: String? = nil,
        phoneType: PhoneType? = nil
    )
    {
        self.afterContactWorkTimeLimit = afterContactWorkTimeLimit
        self.autoAccept = autoAccept
        self.deskPhoneNumber = deskPhoneNumber
        self.phoneType = phoneType
    }
}

extension UserPhoneConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UserPhoneConfig(afterContactWorkTimeLimit: \(String(describing: afterContactWorkTimeLimit)), autoAccept: \(String(describing: autoAccept)), deskPhoneNumber: \(String(describing: deskPhoneNumber)), phoneType: \(String(describing: phoneType)))"}
}