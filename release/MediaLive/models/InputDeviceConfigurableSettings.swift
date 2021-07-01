// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Configurable settings for the input device.
public struct InputDeviceConfigurableSettings: Equatable {
    /// The input source that you want to use. If the device has a source connected to only one of its input ports, or if you don't care which source the device sends, specify Auto. If the device has sources connected to both its input ports, and you want to use a specific source, specify the source.
    public let configuredInput: InputDeviceConfiguredInput?
    /// The maximum bitrate in bits per second. Set a value here to throttle the bitrate of the source video.
    public let maxBitrate: Int

    public init (
        configuredInput: InputDeviceConfiguredInput? = nil,
        maxBitrate: Int = 0
    )
    {
        self.configuredInput = configuredInput
        self.maxBitrate = maxBitrate
    }
}

extension InputDeviceConfigurableSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InputDeviceConfigurableSettings(configuredInput: \(String(describing: configuredInput)), maxBitrate: \(String(describing: maxBitrate)))"}
}