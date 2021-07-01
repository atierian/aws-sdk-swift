// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the response to a <code>CloneStack</code> request.</p>
public struct CloneStackOutputResponse: Equatable {
    /// <p>The cloned stack ID.</p>
    public let stackId: String?

    public init (
        stackId: String? = nil
    )
    {
        self.stackId = stackId
    }
}

extension CloneStackOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CloneStackOutputResponse(stackId: \(String(describing: stackId)))"}
}