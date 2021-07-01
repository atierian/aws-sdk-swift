// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The phone number ID, product type, or calling name fields to update, used with the
/// <a>BatchUpdatePhoneNumber</a> and <a>UpdatePhoneNumber</a> actions.</p>
public struct UpdatePhoneNumberRequestItem: Equatable {
    /// <p>The outbound calling name to update.</p>
    public let callingName: String?
    /// <p>The phone number ID to update.</p>
    public let phoneNumberId: String?
    /// <p>The product type to update.</p>
    public let productType: PhoneNumberProductType?

    public init (
        callingName: String? = nil,
        phoneNumberId: String? = nil,
        productType: PhoneNumberProductType? = nil
    )
    {
        self.callingName = callingName
        self.phoneNumberId = phoneNumberId
        self.productType = productType
    }
}

extension UpdatePhoneNumberRequestItem: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdatePhoneNumberRequestItem(callingName: \(String(describing: callingName)), phoneNumberId: \(String(describing: phoneNumberId)), productType: \(String(describing: productType)))"}
}