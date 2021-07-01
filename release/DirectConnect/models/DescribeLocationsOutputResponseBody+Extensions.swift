// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeLocationsOutputResponseBody: Equatable {
    public let locations: [Location]?
}

extension DescribeLocationsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case locations
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let locationsContainer = try containerValues.decodeIfPresent([Location?].self, forKey: .locations)
        var locationsDecoded0:[Location]? = nil
        if let locationsContainer = locationsContainer {
            locationsDecoded0 = [Location]()
            for structure0 in locationsContainer {
                if let structure0 = structure0 {
                    locationsDecoded0?.append(structure0)
                }
            }
        }
        locations = locationsDecoded0
    }
}