// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies the Amazon S3 object key name to filter on and whether to filter on the suffix or
///          prefix of the key name.</p>
public struct FilterRule: Equatable {
    /// <p>The object key name prefix or suffix identifying one or more objects to which the
    ///          filtering rule applies. The maximum length is 1,024 characters. Overlapping prefixes and
    ///          suffixes are not supported. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring Event Notifications</a>
    ///          in the <i>Amazon S3 User Guide</i>.</p>
    public let name: FilterRuleName?
    /// <p>The value that the filter searches for in object key names.</p>
    public let value: String?

    public init (
        name: FilterRuleName? = nil,
        value: String? = nil
    )
    {
        self.name = name
        self.value = value
    }
}

extension FilterRule: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FilterRule(name: \(String(describing: name)), value: \(String(describing: value)))"}
}