// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetStagesOutputResponseBody: Equatable {
    public let item: [Stage]?
}

extension GetStagesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case item
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let itemContainer = try containerValues.decodeIfPresent([Stage?].self, forKey: .item)
        var itemDecoded0:[Stage]? = nil
        if let itemContainer = itemContainer {
            itemDecoded0 = [Stage]()
            for structure0 in itemContainer {
                if let structure0 = structure0 {
                    itemDecoded0?.append(structure0)
                }
            }
        }
        item = itemDecoded0
    }
}