// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Parameter value of the application.</p>
public struct ParameterValue: Equatable {
    /// <p>The key associated with the parameter. If you don't specify a key and value for a particular parameter, AWS CloudFormation
    ///  uses the default value that is specified in your template.</p>
    public let name: String?
    /// <p>The input value associated with the parameter.</p>
    public let value: String?

    public init (
        name: String? = nil,
        value: String? = nil
    )
    {
        self.name = name
        self.value = value
    }
}

extension ParameterValue: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ParameterValue(name: \(String(describing: name)), value: \(String(describing: value)))"}
}