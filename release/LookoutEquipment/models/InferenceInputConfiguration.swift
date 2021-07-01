// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>> Specifies configuration information for the input data for the inference, including S3
///          location of input data.. </p>
public struct InferenceInputConfiguration: Equatable {
    /// <p>> Specifies configuration information for the input data for the inference, including
    ///          timestamp format and delimiter. </p>
    public let inferenceInputNameConfiguration: InferenceInputNameConfiguration?
    /// <p>Indicates the difference between your time zone and Greenwich Mean Time (GMT). </p>
    public let inputTimeZoneOffset: String?
    /// <p> Specifies configuration information for the input data for the inference, including S3
    ///          location of input data.. </p>
    public let s3InputConfiguration: InferenceS3InputConfiguration?

    public init (
        inferenceInputNameConfiguration: InferenceInputNameConfiguration? = nil,
        inputTimeZoneOffset: String? = nil,
        s3InputConfiguration: InferenceS3InputConfiguration? = nil
    )
    {
        self.inferenceInputNameConfiguration = inferenceInputNameConfiguration
        self.inputTimeZoneOffset = inputTimeZoneOffset
        self.s3InputConfiguration = s3InputConfiguration
    }
}

extension InferenceInputConfiguration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InferenceInputConfiguration(inferenceInputNameConfiguration: \(String(describing: inferenceInputNameConfiguration)), inputTimeZoneOffset: \(String(describing: inputTimeZoneOffset)), s3InputConfiguration: \(String(describing: s3InputConfiguration)))"}
}