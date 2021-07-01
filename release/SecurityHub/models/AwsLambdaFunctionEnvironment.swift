// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A function's environment variable settings.</p>
public struct AwsLambdaFunctionEnvironment: Equatable {
    /// <p>An <code>AwsLambdaFunctionEnvironmentError</code> object.</p>
    public let error: AwsLambdaFunctionEnvironmentError?
    /// <p>Environment variable key-value pairs.</p>
    public let variables: [String:String]?

    public init (
        error: AwsLambdaFunctionEnvironmentError? = nil,
        variables: [String:String]? = nil
    )
    {
        self.error = error
        self.variables = variables
    }
}

extension AwsLambdaFunctionEnvironment: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AwsLambdaFunctionEnvironment(error: \(String(describing: error)), variables: \(String(describing: variables)))"}
}