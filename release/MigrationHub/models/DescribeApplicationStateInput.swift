// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeApplicationStateInput: Equatable {
    /// <p>The configurationId in Application Discovery Service that uniquely identifies the
    ///          grouped application.</p>
    public let applicationId: String?

    public init (
        applicationId: String? = nil
    )
    {
        self.applicationId = applicationId
    }
}

extension DescribeApplicationStateInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeApplicationStateInput(applicationId: \(String(describing: applicationId)))"}
}