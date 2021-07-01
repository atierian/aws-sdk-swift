// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListDeviceFleetsOutputResponseBody: Equatable {
    public let deviceFleetSummaries: [DeviceFleetSummary]?
    public let nextToken: String?
}

extension ListDeviceFleetsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case deviceFleetSummaries = "DeviceFleetSummaries"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let deviceFleetSummariesContainer = try containerValues.decodeIfPresent([DeviceFleetSummary?].self, forKey: .deviceFleetSummaries)
        var deviceFleetSummariesDecoded0:[DeviceFleetSummary]? = nil
        if let deviceFleetSummariesContainer = deviceFleetSummariesContainer {
            deviceFleetSummariesDecoded0 = [DeviceFleetSummary]()
            for structure0 in deviceFleetSummariesContainer {
                if let structure0 = structure0 {
                    deviceFleetSummariesDecoded0?.append(structure0)
                }
            }
        }
        deviceFleetSummaries = deviceFleetSummariesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}