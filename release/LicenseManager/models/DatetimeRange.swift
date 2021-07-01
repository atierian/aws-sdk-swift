// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes a time range, in ISO8601-UTC format.</p>
public struct DatetimeRange: Equatable {
    /// <p>Start of the time range.</p>
    public let begin: String?
    /// <p>End of the time range.</p>
    public let end: String?

    public init (
        begin: String? = nil,
        end: String? = nil
    )
    {
        self.begin = begin
        self.end = end
    }
}

extension DatetimeRange: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DatetimeRange(begin: \(String(describing: begin)), end: \(String(describing: end)))"}
}