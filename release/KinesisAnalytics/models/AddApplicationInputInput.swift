// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct AddApplicationInputInput: Equatable {
    /// <p>Name of your existing Amazon Kinesis Analytics application to which you want to add the streaming source.</p>
    public let applicationName: String?
    /// <p>Current version of your Amazon Kinesis Analytics application. You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation
    ///             to find the current application version.</p>
    public let currentApplicationVersionId: Int?
    /// <p>The <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_Input.html">Input</a> to add.</p>
    public let input: Input?

    public init (
        applicationName: String? = nil,
        currentApplicationVersionId: Int? = nil,
        input: Input? = nil
    )
    {
        self.applicationName = applicationName
        self.currentApplicationVersionId = currentApplicationVersionId
        self.input = input
    }
}

extension AddApplicationInputInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AddApplicationInputInput(applicationName: \(String(describing: applicationName)), currentApplicationVersionId: \(String(describing: currentApplicationVersionId)), input: \(String(describing: input)))"}
}