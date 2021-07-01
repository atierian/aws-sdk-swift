// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents a request to the delete upload operation.</p>
public struct DeleteUploadInput: Equatable {
    /// <p>Represents the Amazon Resource Name (ARN) of the Device Farm upload to delete.</p>
    public let arn: String?

    public init (
        arn: String? = nil
    )
    {
        self.arn = arn
    }
}

extension DeleteUploadInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteUploadInput(arn: \(String(describing: arn)))"}
}