// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An instance of a variable to be passed to the <code>containerAction</code> execution. Each
///       variable must have a name and a value given by one of <code>stringValue</code>,
///         <code>datasetContentVersionValue</code>, or <code>outputFileUriValue</code>.</p>
public struct Variable: Equatable {
    /// <p>The value of the variable as a structure that specifies a dataset content version.</p>
    public let datasetContentVersionValue: DatasetContentVersionValue?
    /// <p>The value of the variable as a double (numeric).</p>
    public let doubleValue: Double
    /// <p>The name of the variable.</p>
    public let name: String?
    /// <p>The value of the variable as a structure that specifies an output file URI.</p>
    public let outputFileUriValue: OutputFileUriValue?
    /// <p>The value of the variable as a string.</p>
    public let stringValue: String?

    public init (
        datasetContentVersionValue: DatasetContentVersionValue? = nil,
        doubleValue: Double = 0.0,
        name: String? = nil,
        outputFileUriValue: OutputFileUriValue? = nil,
        stringValue: String? = nil
    )
    {
        self.datasetContentVersionValue = datasetContentVersionValue
        self.doubleValue = doubleValue
        self.name = name
        self.outputFileUriValue = outputFileUriValue
        self.stringValue = stringValue
    }
}

extension Variable: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Variable(datasetContentVersionValue: \(String(describing: datasetContentVersionValue)), doubleValue: \(String(describing: doubleValue)), name: \(String(describing: name)), outputFileUriValue: \(String(describing: outputFileUriValue)), stringValue: \(String(describing: stringValue)))"}
}