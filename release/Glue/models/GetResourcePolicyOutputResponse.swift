// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetResourcePolicyOutputResponse: Equatable {
    /// <p>The date and time at which the policy was created.</p>
    public let createTime: Date?
    /// <p>Contains the hash value associated with this policy.</p>
    public let policyHash: String?
    /// <p>Contains the requested policy document, in JSON format.</p>
    public let policyInJson: String?
    /// <p>The date and time at which the policy was last updated.</p>
    public let updateTime: Date?

    public init (
        createTime: Date? = nil,
        policyHash: String? = nil,
        policyInJson: String? = nil,
        updateTime: Date? = nil
    )
    {
        self.createTime = createTime
        self.policyHash = policyHash
        self.policyInJson = policyInJson
        self.updateTime = updateTime
    }
}

extension GetResourcePolicyOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetResourcePolicyOutputResponse(createTime: \(String(describing: createTime)), policyHash: \(String(describing: policyHash)), policyInJson: \(String(describing: policyInJson)), updateTime: \(String(describing: updateTime)))"}
}