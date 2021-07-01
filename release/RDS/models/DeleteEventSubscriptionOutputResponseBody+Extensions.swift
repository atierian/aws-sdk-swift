// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteEventSubscriptionOutputResponseBody: Equatable {
    public let eventSubscription: EventSubscription?
}

extension DeleteEventSubscriptionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case eventSubscription = "EventSubscription"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("DeleteEventSubscriptionResult"))
        let eventSubscriptionDecoded = try containerValues.decodeIfPresent(EventSubscription.self, forKey: .eventSubscription)
        eventSubscription = eventSubscriptionDecoded
    }
}