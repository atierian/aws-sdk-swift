// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Filters: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case channels = "Channels"
        case queues = "Queues"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let channels = channels {
            var channelsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .channels)
            for channels0 in channels {
                try channelsContainer.encode(channels0.rawValue)
            }
        }
        if let queues = queues {
            var queuesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .queues)
            for queues0 in queues {
                try queuesContainer.encode(queues0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let queuesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .queues)
        var queuesDecoded0:[String]? = nil
        if let queuesContainer = queuesContainer {
            queuesDecoded0 = [String]()
            for string0 in queuesContainer {
                if let string0 = string0 {
                    queuesDecoded0?.append(string0)
                }
            }
        }
        queues = queuesDecoded0
        let channelsContainer = try containerValues.decodeIfPresent([Channel?].self, forKey: .channels)
        var channelsDecoded0:[Channel]? = nil
        if let channelsContainer = channelsContainer {
            channelsDecoded0 = [Channel]()
            for string0 in channelsContainer {
                if let string0 = string0 {
                    channelsDecoded0?.append(string0)
                }
            }
        }
        channels = channelsDecoded0
    }
}