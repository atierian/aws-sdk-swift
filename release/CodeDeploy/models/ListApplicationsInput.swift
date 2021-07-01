// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the input of a <code>ListApplications</code> operation.</p>
public struct ListApplicationsInput: Equatable {
    /// <p>An identifier returned from the previous list applications call. It can be used to
    ///             return the next set of applications in the list.</p>
    public let nextToken: String?

    public init (
        nextToken: String? = nil
    )
    {
        self.nextToken = nextToken
    }
}

extension ListApplicationsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListApplicationsInput(nextToken: \(String(describing: nextToken)))"}
}