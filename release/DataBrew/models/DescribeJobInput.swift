// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeJobInput: Equatable {
    /// <p>The name of the job to be described.</p>
    public let name: String?

    public init (
        name: String? = nil
    )
    {
        self.name = name
    }
}

extension DescribeJobInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeJobInput(name: \(String(describing: name)))"}
}