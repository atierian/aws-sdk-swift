// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct LookupPolicyInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.
    ///       For more information, see <a>arns</a>.</p>
    public let directoryArn: String?
    /// <p>The maximum number of items to be retrieved in a single call. This is an approximate
    ///       number.</p>
    public let maxResults: Int?
    /// <p>The token to request the next page of results.</p>
    public let nextToken: String?
    /// <p>Reference that identifies the object whose policies will be looked up.</p>
    public let objectReference: ObjectReference?

    public init (
        directoryArn: String? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil,
        objectReference: ObjectReference? = nil
    )
    {
        self.directoryArn = directoryArn
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.objectReference = objectReference
    }
}

extension LookupPolicyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LookupPolicyInput(directoryArn: \(String(describing: directoryArn)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), objectReference: \(String(describing: objectReference)))"}
}