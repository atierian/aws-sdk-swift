// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeChannelInput: Equatable {
    /// The ID of a Channel.
    public let id: String?

    public init (
        id: String? = nil
    )
    {
        self.id = id
    }
}

extension DescribeChannelInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeChannelInput(id: \(String(describing: id)))"}
}