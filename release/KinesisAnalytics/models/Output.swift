// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
///             Describes application output configuration in which you identify
///             an in-application stream and a destination where you want the
///             in-application stream data to be written. The destination can be
///             an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream.
///         </p>
///
///         <p></p>
///         <p>For limits on how many destinations an application can write and other
///             limitations, see
///             <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>.
///         </p>
public struct Output: Equatable {
    /// <p>Describes the data format when records are written to the destination. For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html">Configuring Application Output</a>.</p>
    public let destinationSchema: DestinationSchema?
    /// <p>Identifies an Amazon Kinesis Firehose delivery stream as the destination.</p>
    public let kinesisFirehoseOutput: KinesisFirehoseOutput?
    /// <p>Identifies an Amazon Kinesis stream
    ///             as the destination.</p>
    public let kinesisStreamsOutput: KinesisStreamsOutput?
    /// <p>Identifies an AWS Lambda function as the destination.</p>
    public let lambdaOutput: LambdaOutput?
    /// <p>Name of the in-application stream.</p>
    public let name: String?

    public init (
        destinationSchema: DestinationSchema? = nil,
        kinesisFirehoseOutput: KinesisFirehoseOutput? = nil,
        kinesisStreamsOutput: KinesisStreamsOutput? = nil,
        lambdaOutput: LambdaOutput? = nil,
        name: String? = nil
    )
    {
        self.destinationSchema = destinationSchema
        self.kinesisFirehoseOutput = kinesisFirehoseOutput
        self.kinesisStreamsOutput = kinesisStreamsOutput
        self.lambdaOutput = lambdaOutput
        self.name = name
    }
}

extension Output: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Output(destinationSchema: \(String(describing: destinationSchema)), kinesisFirehoseOutput: \(String(describing: kinesisFirehoseOutput)), kinesisStreamsOutput: \(String(describing: kinesisStreamsOutput)), lambdaOutput: \(String(describing: lambdaOutput)), name: \(String(describing: name)))"}
}