// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetMetricDataOutputResponseBody: Equatable {
    public let metricDataResults: [MetricDataResult]?
    public let nextToken: String?
    public let messages: [MessageData]?
}

extension GetMetricDataOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case messages = "Messages"
        case metricDataResults = "MetricDataResults"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("GetMetricDataResult"))
        if containerValues.contains(.metricDataResults) {
            struct KeyVal0{struct member{}}
            let metricDataResultsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .metricDataResults)
            if let metricDataResultsWrappedContainer = metricDataResultsWrappedContainer {
                let metricDataResultsContainer = try metricDataResultsWrappedContainer.decodeIfPresent([MetricDataResult].self, forKey: .member)
                var metricDataResultsBuffer:[MetricDataResult]? = nil
                if let metricDataResultsContainer = metricDataResultsContainer {
                    metricDataResultsBuffer = [MetricDataResult]()
                    for structureContainer0 in metricDataResultsContainer {
                        metricDataResultsBuffer?.append(structureContainer0)
                    }
                }
                metricDataResults = metricDataResultsBuffer
            } else {
                metricDataResults = []
            }
        } else {
            metricDataResults = nil
        }
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        if containerValues.contains(.messages) {
            struct KeyVal0{struct member{}}
            let messagesWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .messages)
            if let messagesWrappedContainer = messagesWrappedContainer {
                let messagesContainer = try messagesWrappedContainer.decodeIfPresent([MessageData].self, forKey: .member)
                var messagesBuffer:[MessageData]? = nil
                if let messagesContainer = messagesContainer {
                    messagesBuffer = [MessageData]()
                    for structureContainer0 in messagesContainer {
                        messagesBuffer?.append(structureContainer0)
                    }
                }
                messages = messagesBuffer
            } else {
                messages = []
            }
        } else {
            messages = nil
        }
    }
}