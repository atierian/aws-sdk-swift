// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Usage report with specified parameters.</p>
public struct BusinessReport: Equatable {
    /// <p>The time of report delivery.</p>
    public let deliveryTime: Date?
    /// <p>The download link where a user can download the report.</p>
    public let downloadUrl: String?
    /// <p>The failure code.</p>
    public let failureCode: BusinessReportFailureCode?
    /// <p>The S3 location of the output reports.</p>
    public let s3Location: BusinessReportS3Location?
    /// <p>The status of the report generation execution (RUNNING, SUCCEEDED, or
    ///          FAILED).</p>
    public let status: BusinessReportStatus?

    public init (
        deliveryTime: Date? = nil,
        downloadUrl: String? = nil,
        failureCode: BusinessReportFailureCode? = nil,
        s3Location: BusinessReportS3Location? = nil,
        status: BusinessReportStatus? = nil
    )
    {
        self.deliveryTime = deliveryTime
        self.downloadUrl = downloadUrl
        self.failureCode = failureCode
        self.s3Location = s3Location
        self.status = status
    }
}

extension BusinessReport: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BusinessReport(deliveryTime: \(String(describing: deliveryTime)), downloadUrl: \(String(describing: downloadUrl)), failureCode: \(String(describing: failureCode)), s3Location: \(String(describing: s3Location)), status: \(String(describing: status)))"}
}