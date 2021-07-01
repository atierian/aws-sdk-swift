// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ModifyInstanceEventStartTimeOutputResponseBody: Equatable {
    public let event: InstanceStatusEvent?
}

extension ModifyInstanceEventStartTimeOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case event = "event"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let eventDecoded = try containerValues.decodeIfPresent(InstanceStatusEvent.self, forKey: .event)
        event = eventDecoded
    }
}