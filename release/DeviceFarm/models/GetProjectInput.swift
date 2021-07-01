// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents a request to the get project operation.</p>
public struct GetProjectInput: Equatable {
    /// <p>The project's ARN.</p>
    public let arn: String?

    public init (
        arn: String? = nil
    )
    {
        self.arn = arn
    }
}

extension GetProjectInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetProjectInput(arn: \(String(describing: arn)))"}
}