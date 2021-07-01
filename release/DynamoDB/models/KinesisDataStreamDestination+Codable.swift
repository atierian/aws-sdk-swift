// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension KinesisDataStreamDestination: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case destinationStatus = "DestinationStatus"
        case destinationStatusDescription = "DestinationStatusDescription"
        case streamArn = "StreamArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let destinationStatus = destinationStatus {
            try encodeContainer.encode(destinationStatus.rawValue, forKey: .destinationStatus)
        }
        if let destinationStatusDescription = destinationStatusDescription {
            try encodeContainer.encode(destinationStatusDescription, forKey: .destinationStatusDescription)
        }
        if let streamArn = streamArn {
            try encodeContainer.encode(streamArn, forKey: .streamArn)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let streamArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .streamArn)
        streamArn = streamArnDecoded
        let destinationStatusDecoded = try containerValues.decodeIfPresent(DestinationStatus.self, forKey: .destinationStatus)
        destinationStatus = destinationStatusDecoded
        let destinationStatusDescriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .destinationStatusDescription)
        destinationStatusDescription = destinationStatusDescriptionDecoded
    }
}