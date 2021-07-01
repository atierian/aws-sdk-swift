// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>For a SQL-based Kinesis Data Analytics application, represents an update to the
///         <a>InputLambdaProcessor</a> that is used to preprocess the records in the
///       stream.</p>
public struct InputLambdaProcessorUpdate: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the new AWS Lambda function that is used to preprocess
    ///       the records in the stream.</p>
    ///          <note>
    ///             <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda">Example ARNs: AWS Lambda</a>
    ///             </p>
    ///          </note>
    public let resourceARNUpdate: String?

    public init (
        resourceARNUpdate: String? = nil
    )
    {
        self.resourceARNUpdate = resourceARNUpdate
    }
}

extension InputLambdaProcessorUpdate: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InputLambdaProcessorUpdate(resourceARNUpdate: \(String(describing: resourceARNUpdate)))"}
}