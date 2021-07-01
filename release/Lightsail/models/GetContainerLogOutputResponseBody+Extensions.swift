// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetContainerLogOutputResponseBody: Equatable {
    public let logEvents: [ContainerServiceLogEvent]?
    public let nextPageToken: String?
}

extension GetContainerLogOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case logEvents
        case nextPageToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let logEventsContainer = try containerValues.decodeIfPresent([ContainerServiceLogEvent?].self, forKey: .logEvents)
        var logEventsDecoded0:[ContainerServiceLogEvent]? = nil
        if let logEventsContainer = logEventsContainer {
            logEventsDecoded0 = [ContainerServiceLogEvent]()
            for structure0 in logEventsContainer {
                if let structure0 = structure0 {
                    logEventsDecoded0?.append(structure0)
                }
            }
        }
        logEvents = logEventsDecoded0
        let nextPageTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextPageToken)
        nextPageToken = nextPageTokenDecoded
    }
}