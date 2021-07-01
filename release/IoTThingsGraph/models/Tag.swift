// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Metadata assigned to an AWS IoT Things Graph resource consisting of a key-value pair.</p>
public struct Tag: Equatable {
    /// <p>The required name of the tag. The string value can be from 1 to 128 Unicode characters in length.</p>
    public let key: String?
    /// <p>The optional value of the tag. The string value can be from 1 to 256 Unicode characters in length.</p>
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