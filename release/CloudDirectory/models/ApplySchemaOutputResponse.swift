// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ApplySchemaOutputResponse: Equatable {
    /// <p>The applied schema ARN that is associated with the copied schema in the <a>Directory</a>. You can use this ARN to describe the schema information applied on
    ///       this directory. For more information, see <a>arns</a>.</p>
    public let appliedSchemaArn: String?
    /// <p>The ARN that is associated with the <a>Directory</a>. For more information,
    ///       see <a>arns</a>.</p>
    public let directoryArn: String?

    public init (
        appliedSchemaArn: String? = nil,
        directoryArn: String? = nil
    )
    {
        self.appliedSchemaArn = appliedSchemaArn
        self.directoryArn = directoryArn
    }
}

extension ApplySchemaOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ApplySchemaOutputResponse(appliedSchemaArn: \(String(describing: appliedSchemaArn)), directoryArn: \(String(describing: directoryArn)))"}
}