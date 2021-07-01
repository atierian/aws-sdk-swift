// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateConfigurationSetEventDestinationInputBody: Equatable {
    public let eventDestination: EventDestinationDefinition?
    public let eventDestinationName: String?
}

extension CreateConfigurationSetEventDestinationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case eventDestination = "EventDestination"
        case eventDestinationName = "EventDestinationName"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let eventDestinationDecoded = try containerValues.decodeIfPresent(EventDestinationDefinition.self, forKey: .eventDestination)
        eventDestination = eventDestinationDecoded
        let eventDestinationNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .eventDestinationName)
        eventDestinationName = eventDestinationNameDecoded
    }
}