// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An object that contains the error details for an operation on a schema version.</p>
public struct SchemaVersionErrorItem: Equatable {
    /// <p>The details of the error for the schema version.</p>
    public let errorDetails: ErrorDetails?
    /// <p>The version number of the schema.</p>
    public let versionNumber: Int

    public init (
        errorDetails: ErrorDetails? = nil,
        versionNumber: Int = 0
    )
    {
        self.errorDetails = errorDetails
        self.versionNumber = versionNumber
    }
}

extension SchemaVersionErrorItem: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SchemaVersionErrorItem(errorDetails: \(String(describing: errorDetails)), versionNumber: \(String(describing: versionNumber)))"}
}