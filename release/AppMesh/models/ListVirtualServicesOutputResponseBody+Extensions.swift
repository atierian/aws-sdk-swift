// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListVirtualServicesOutputResponseBody: Equatable {
    public let virtualServices: [VirtualServiceRef]?
    public let nextToken: String?
}

extension ListVirtualServicesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case virtualServices
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let virtualServicesContainer = try containerValues.decodeIfPresent([VirtualServiceRef?].self, forKey: .virtualServices)
        var virtualServicesDecoded0:[VirtualServiceRef]? = nil
        if let virtualServicesContainer = virtualServicesContainer {
            virtualServicesDecoded0 = [VirtualServiceRef]()
            for structure0 in virtualServicesContainer {
                if let structure0 = structure0 {
                    virtualServicesDecoded0?.append(structure0)
                }
            }
        }
        virtualServices = virtualServicesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}