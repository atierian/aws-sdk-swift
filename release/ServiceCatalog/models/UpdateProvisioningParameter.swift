// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The parameter key-value pair used to update a provisioned product.</p>
public struct UpdateProvisioningParameter: Equatable {
    /// <p>The parameter key.</p>
    public let key: String?
    /// <p>If set to true, <code>Value</code> is ignored and the previous parameter value is kept.</p>
    public let usePreviousValue: Bool
    /// <p>The parameter value.</p>
    public let value: String?

    public init (
        key: String? = nil,
        usePreviousValue: Bool = false,
        value: String? = nil
    )
    {
        self.key = key
        self.usePreviousValue = usePreviousValue
        self.value = value
    }
}

extension UpdateProvisioningParameter: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateProvisioningParameter(key: \(String(describing: key)), usePreviousValue: \(String(describing: usePreviousValue)), value: \(String(describing: value)))"}
}