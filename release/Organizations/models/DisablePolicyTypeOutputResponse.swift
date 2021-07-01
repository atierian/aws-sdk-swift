// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisablePolicyTypeOutputResponse: Equatable {
    /// <p>A structure that shows the root with the updated list of enabled policy types.</p>
    public let root: Root?

    public init (
        root: Root? = nil
    )
    {
        self.root = root
    }
}

extension DisablePolicyTypeOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisablePolicyTypeOutputResponse(root: \(String(describing: root)))"}
}