// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A tag is a key-value pair. Allowed characters are letters, white space, and numbers that
///       can be represented in UTF-8, and the following characters:<code> + - = . _ : /</code>.</p>
public struct Tag: Equatable {
    /// <p>The tag key (String). The key can't start with <code>aws:</code>.</p>
    public let key: String?
    /// <p>The value of the tag key.</p>
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

extension Tag: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Tag(key: \(String(describing: key)), value: \(String(describing: value)))"}
}