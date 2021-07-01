// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListSchemasOutputResponseBody: Equatable {
    public let schemas: [String]?
    public let nextToken: String?
}

extension ListSchemasOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case schemas = "Schemas"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let schemasContainer = try containerValues.decodeIfPresent([String?].self, forKey: .schemas)
        var schemasDecoded0:[String]? = nil
        if let schemasContainer = schemasContainer {
            schemasDecoded0 = [String]()
            for string0 in schemasContainer {
                if let string0 = string0 {
                    schemasDecoded0?.append(string0)
                }
            }
        }
        schemas = schemasDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}