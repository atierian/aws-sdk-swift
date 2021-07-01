// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An entry for a prefix list.</p>
public struct RemovePrefixListEntry: Equatable {
    /// <p>The CIDR block.</p>
    public let cidr: String?

    public init (
        cidr: String? = nil
    )
    {
        self.cidr = cidr
    }
}

extension RemovePrefixListEntry: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RemovePrefixListEntry(cidr: \(String(describing: cidr)))"}
}