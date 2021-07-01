// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UplinkSpectrumConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case centerFrequency
        case polarization
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let centerFrequency = centerFrequency {
            try encodeContainer.encode(centerFrequency, forKey: .centerFrequency)
        }
        if let polarization = polarization {
            try encodeContainer.encode(polarization.rawValue, forKey: .polarization)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let centerFrequencyDecoded = try containerValues.decodeIfPresent(Frequency.self, forKey: .centerFrequency)
        centerFrequency = centerFrequencyDecoded
        let polarizationDecoded = try containerValues.decodeIfPresent(Polarization.self, forKey: .polarization)
        polarization = polarizationDecoded
    }
}