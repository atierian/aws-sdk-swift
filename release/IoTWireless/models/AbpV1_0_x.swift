// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>ABP device object for LoRaWAN specification v1.0.x</p>
public struct AbpV1_0_x: Equatable {
    /// <p>The DevAddr value.</p>
    public let devAddr: String?
    /// <p>Session keys for ABP v1.0.x</p>
    public let sessionKeys: SessionKeysAbpV1_0_x?

    public init (
        devAddr: String? = nil,
        sessionKeys: SessionKeysAbpV1_0_x? = nil
    )
    {
        self.devAddr = devAddr
        self.sessionKeys = sessionKeys
    }
}

extension AbpV1_0_x: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AbpV1_0_x(devAddr: \(String(describing: devAddr)), sessionKeys: \(String(describing: sessionKeys)))"}
}