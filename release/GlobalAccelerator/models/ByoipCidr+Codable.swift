// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ByoipCidr: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cidr = "Cidr"
        case events = "Events"
        case state = "State"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let cidr = cidr {
            try encodeContainer.encode(cidr, forKey: .cidr)
        }
        if let events = events {
            var eventsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .events)
            for byoipcidrevents0 in events {
                try eventsContainer.encode(byoipcidrevents0)
            }
        }
        if let state = state {
            try encodeContainer.encode(state.rawValue, forKey: .state)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let cidrDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cidr)
        cidr = cidrDecoded
        let stateDecoded = try containerValues.decodeIfPresent(ByoipCidrState.self, forKey: .state)
        state = stateDecoded
        let eventsContainer = try containerValues.decodeIfPresent([ByoipCidrEvent?].self, forKey: .events)
        var eventsDecoded0:[ByoipCidrEvent]? = nil
        if let eventsContainer = eventsContainer {
            eventsDecoded0 = [ByoipCidrEvent]()
            for structure0 in eventsContainer {
                if let structure0 = structure0 {
                    eventsDecoded0?.append(structure0)
                }
            }
        }
        events = eventsDecoded0
    }
}