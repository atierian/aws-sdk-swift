// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetInstancesHealthStatusOutputResponseBody: Equatable {
    public let status: [String:HealthStatus]?
    public let nextToken: String?
}

extension GetInstancesHealthStatusOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case status = "Status"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let statusContainer = try containerValues.decodeIfPresent([String: HealthStatus?].self, forKey: .status)
        var statusDecoded0: [String:HealthStatus]? = nil
        if let statusContainer = statusContainer {
            statusDecoded0 = [String:HealthStatus]()
            for (key0, healthstatus0) in statusContainer {
                if let healthstatus0 = healthstatus0 {
                    statusDecoded0?[key0] = healthstatus0
                }
            }
        }
        status = statusDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}