// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>A list that contains the status of the delivery of the
/// 			configuration stream notification to the Amazon SNS topic.</p>
public struct ConfigStreamDeliveryInfo: Equatable {
    /// <p>The error code from the last attempted delivery.</p>
    public let lastErrorCode: String?
    /// <p>The error message from the last attempted delivery.</p>
    public let lastErrorMessage: String?
    /// <p>Status of the last attempted delivery.</p>
    /// 		       <p>
    /// 			         <b>Note</b> Providing an SNS topic on a
    /// 				<a href="https://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html">DeliveryChannel</a> for AWS Config is optional. If the SNS
    /// 			delivery is turned off, the last status will be <b>Not_Applicable</b>.</p>
    public let lastStatus: DeliveryStatus?
    /// <p>The time from the last status change.</p>
    public let lastStatusChangeTime: Date?

    public init (
        lastErrorCode: String? = nil,
        lastErrorMessage: String? = nil,
        lastStatus: DeliveryStatus? = nil,
        lastStatusChangeTime: Date? = nil
    )
    {
        self.lastErrorCode = lastErrorCode
        self.lastErrorMessage = lastErrorMessage
        self.lastStatus = lastStatus
        self.lastStatusChangeTime = lastStatusChangeTime
    }
}

extension ConfigStreamDeliveryInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ConfigStreamDeliveryInfo(lastErrorCode: \(String(describing: lastErrorCode)), lastErrorMessage: \(String(describing: lastErrorMessage)), lastStatus: \(String(describing: lastStatus)), lastStatusChangeTime: \(String(describing: lastStatusChangeTime)))"}
}