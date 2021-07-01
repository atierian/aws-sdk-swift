// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteMobileDeviceAccessRuleInput: Equatable {
    /// <p>The identifier of the rule to be deleted.</p>
    public let mobileDeviceAccessRuleId: String?
    /// <p>The Amazon WorkMail organization under which the rule will be deleted.</p>
    public let organizationId: String?

    public init (
        mobileDeviceAccessRuleId: String? = nil,
        organizationId: String? = nil
    )
    {
        self.mobileDeviceAccessRuleId = mobileDeviceAccessRuleId
        self.organizationId = organizationId
    }
}

extension DeleteMobileDeviceAccessRuleInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteMobileDeviceAccessRuleInput(mobileDeviceAccessRuleId: \(String(describing: mobileDeviceAccessRuleId)), organizationId: \(String(describing: organizationId)))"}
}