// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides information about the tags that are associated with an S3 bucket or object. Each tag consists of a required tag key and an associated tag value.</p>
public struct KeyValuePair: Equatable {
    /// <p>One part of a key-value pair that comprises a tag. A tag key is a general label that acts as a category for more specific tag values.</p>
    public let key: String?
    /// <p>One part of a key-value pair that comprises a tag. A tag value acts as a descriptor for a tag key. A tag value can be an empty string.</p>
    public let value: String?

    public init (
        key: String? = nil,
        value: String? = nil
    )
    {
        self.key = key
        self.value = value
    }
}

extension KeyValuePair: CustomDebugStringConvertible {
    public var debugDescription: String {
        "KeyValuePair(key: \(String(describing: key)), value: \(String(describing: value)))"}
}