// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListBuildsForProjectOutputResponseBody: Equatable {
    public let ids: [String]?
    public let nextToken: String?
}

extension ListBuildsForProjectOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case ids
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .ids)
        var idsDecoded0:[String]? = nil
        if let idsContainer = idsContainer {
            idsDecoded0 = [String]()
            for string0 in idsContainer {
                if let string0 = string0 {
                    idsDecoded0?.append(string0)
                }
            }
        }
        ids = idsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}