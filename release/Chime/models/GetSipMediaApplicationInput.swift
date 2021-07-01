// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetSipMediaApplicationInput: Equatable {
    /// <p>The SIP media application ID.</p>
    public let sipMediaApplicationId: String?

    public init (
        sipMediaApplicationId: String? = nil
    )
    {
        self.sipMediaApplicationId = sipMediaApplicationId
    }
}

extension GetSipMediaApplicationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetSipMediaApplicationInput(sipMediaApplicationId: \(String(describing: sipMediaApplicationId)))"}
}