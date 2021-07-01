// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A regular expression representing a restriction on a string configuration option
///       value.</p>
public struct OptionRestrictionRegex: Equatable {
    /// <p>A unique name representing this regular expression.</p>
    public let label: String?
    /// <p>The regular expression pattern that a string configuration option value with this
    ///       restriction must match.</p>
    public let pattern: String?

    public init (
        label: String? = nil,
        pattern: String? = nil
    )
    {
        self.label = label
        self.pattern = pattern
    }
}

extension OptionRestrictionRegex: CustomDebugStringConvertible {
    public var debugDescription: String {
        "OptionRestrictionRegex(label: \(String(describing: label)), pattern: \(String(describing: pattern)))"}
}