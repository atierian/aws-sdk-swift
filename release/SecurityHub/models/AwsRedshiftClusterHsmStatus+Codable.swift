// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AwsRedshiftClusterHsmStatus: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case hsmClientCertificateIdentifier = "HsmClientCertificateIdentifier"
        case hsmConfigurationIdentifier = "HsmConfigurationIdentifier"
        case status = "Status"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let hsmClientCertificateIdentifier = hsmClientCertificateIdentifier {
            try encodeContainer.encode(hsmClientCertificateIdentifier, forKey: .hsmClientCertificateIdentifier)
        }
        if let hsmConfigurationIdentifier = hsmConfigurationIdentifier {
            try encodeContainer.encode(hsmConfigurationIdentifier, forKey: .hsmConfigurationIdentifier)
        }
        if let status = status {
            try encodeContainer.encode(status, forKey: .status)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let hsmClientCertificateIdentifierDecoded = try containerValues.decodeIfPresent(String.self, forKey: .hsmClientCertificateIdentifier)
        hsmClientCertificateIdentifier = hsmClientCertificateIdentifierDecoded
        let hsmConfigurationIdentifierDecoded = try containerValues.decodeIfPresent(String.self, forKey: .hsmConfigurationIdentifier)
        hsmConfigurationIdentifier = hsmConfigurationIdentifierDecoded
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
    }
}