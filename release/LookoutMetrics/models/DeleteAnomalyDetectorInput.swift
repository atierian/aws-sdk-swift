// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteAnomalyDetectorInput: Equatable {
    /// <p>The ARN of the detector to delete.</p>
    public let anomalyDetectorArn: String?

    public init (
        anomalyDetectorArn: String? = nil
    )
    {
        self.anomalyDetectorArn = anomalyDetectorArn
    }
}

extension DeleteAnomalyDetectorInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteAnomalyDetectorInput(anomalyDetectorArn: \(String(describing: anomalyDetectorArn)))"}
}