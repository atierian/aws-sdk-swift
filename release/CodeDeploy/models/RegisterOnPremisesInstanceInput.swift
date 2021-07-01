// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the input of the register on-premises instance operation.</p>
public struct RegisterOnPremisesInstanceInput: Equatable {
    /// <p>The ARN of the IAM session to associate with the on-premises instance.</p>
    public let iamSessionArn: String?
    /// <p>The ARN of the IAM user to associate with the on-premises instance.</p>
    public let iamUserArn: String?
    /// <p>The name of the on-premises instance to register.</p>
    public let instanceName: String?

    public init (
        iamSessionArn: String? = nil,
        iamUserArn: String? = nil,
        instanceName: String? = nil
    )
    {
        self.iamSessionArn = iamSessionArn
        self.iamUserArn = iamUserArn
        self.instanceName = instanceName
    }
}

extension RegisterOnPremisesInstanceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RegisterOnPremisesInstanceInput(iamSessionArn: \(String(describing: iamSessionArn)), iamUserArn: \(String(describing: iamUserArn)), instanceName: \(String(describing: instanceName)))"}
}