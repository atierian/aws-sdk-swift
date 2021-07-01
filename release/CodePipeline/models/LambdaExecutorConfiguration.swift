// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Details about the configuration for the <code>Lambda</code> action engine, or
///             executor.</p>
public struct LambdaExecutorConfiguration: Equatable {
    /// <p>The ARN of the Lambda function used by the action engine.</p>
    public let lambdaFunctionArn: String?

    public init (
        lambdaFunctionArn: String? = nil
    )
    {
        self.lambdaFunctionArn = lambdaFunctionArn
    }
}

extension LambdaExecutorConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LambdaExecutorConfiguration(lambdaFunctionArn: \(String(describing: lambdaFunctionArn)))"}
}