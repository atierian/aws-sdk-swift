// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteDeviceUsageDataInput: Equatable {
    /// <p>The ARN of the device.</p>
    public let deviceArn: String?
    /// <p>The type of usage data to delete.</p>
    public let deviceUsageType: DeviceUsageType?

    public init (
        deviceArn: String? = nil,
        deviceUsageType: DeviceUsageType? = nil
    )
    {
        self.deviceArn = deviceArn
        self.deviceUsageType = deviceUsageType
    }
}

extension DeleteDeviceUsageDataInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteDeviceUsageDataInput(deviceArn: \(String(describing: deviceArn)), deviceUsageType: \(String(describing: deviceUsageType)))"}
}