// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeAlarmHistoryOutputResponseBody: Equatable {
    public let alarmHistoryItems: [AlarmHistoryItem]?
    public let nextToken: String?
}

extension DescribeAlarmHistoryOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case alarmHistoryItems = "AlarmHistoryItems"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let topLevelContainer = try decoder.container(keyedBy: Key.self)
        let containerValues = try topLevelContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: Key("DescribeAlarmHistoryResult"))
        if containerValues.contains(.alarmHistoryItems) {
            struct KeyVal0{struct member{}}
            let alarmHistoryItemsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .alarmHistoryItems)
            if let alarmHistoryItemsWrappedContainer = alarmHistoryItemsWrappedContainer {
                let alarmHistoryItemsContainer = try alarmHistoryItemsWrappedContainer.decodeIfPresent([AlarmHistoryItem].self, forKey: .member)
                var alarmHistoryItemsBuffer:[AlarmHistoryItem]? = nil
                if let alarmHistoryItemsContainer = alarmHistoryItemsContainer {
                    alarmHistoryItemsBuffer = [AlarmHistoryItem]()
                    for structureContainer0 in alarmHistoryItemsContainer {
                        alarmHistoryItemsBuffer?.append(structureContainer0)
                    }
                }
                alarmHistoryItems = alarmHistoryItemsBuffer
            } else {
                alarmHistoryItems = []
            }
        } else {
            alarmHistoryItems = nil
        }
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}