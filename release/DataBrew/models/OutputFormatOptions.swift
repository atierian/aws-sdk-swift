// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents a set of options that define the structure of comma-separated (CSV) job output.</p>
public struct OutputFormatOptions: Equatable {
    /// <p>Represents a set of options that define the structure of comma-separated value (CSV)
    ///             job output.</p>
    public let csv: CsvOutputOptions?

    public init (
        csv: CsvOutputOptions? = nil
    )
    {
        self.csv = csv
    }
}

extension OutputFormatOptions: CustomDebugStringConvertible {
    public var debugDescription: String {
        "OutputFormatOptions(csv: \(String(describing: csv)))"}
}