// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The error information.</p>
public struct ErrorDocument: Equatable {
    /// <p>The object key name to use when a 4XX class error occurs.</p>
    ///          <important>
    ///             <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    ///          XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    ///             XML related object key constraints</a>.</p>
    ///          </important>
    public let key: String?

    public init (
        key: String? = nil
    )
    {
        self.key = key
    }
}

extension ErrorDocument: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ErrorDocument(key: \(String(describing: key)))"}
}