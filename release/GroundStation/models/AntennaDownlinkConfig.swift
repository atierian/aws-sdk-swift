// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about how AWS Ground Station should configure an
///          antenna for downlink during a contact.</p>
public struct AntennaDownlinkConfig: Equatable {
    /// <p>Object that describes a spectral <code>Config</code>.</p>
    public let spectrumConfig: SpectrumConfig?

    public init (
        spectrumConfig: SpectrumConfig? = nil
    )
    {
        self.spectrumConfig = spectrumConfig
    }
}

extension AntennaDownlinkConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AntennaDownlinkConfig(spectrumConfig: \(String(describing: spectrumConfig)))"}
}