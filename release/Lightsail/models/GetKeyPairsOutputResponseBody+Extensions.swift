// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetKeyPairsOutputResponseBody: Equatable {
    public let keyPairs: [KeyPair]?
    public let nextPageToken: String?
}

extension GetKeyPairsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case keyPairs
        case nextPageToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let keyPairsContainer = try containerValues.decodeIfPresent([KeyPair?].self, forKey: .keyPairs)
        var keyPairsDecoded0:[KeyPair]? = nil
        if let keyPairsContainer = keyPairsContainer {
            keyPairsDecoded0 = [KeyPair]()
            for structure0 in keyPairsContainer {
                if let structure0 = structure0 {
                    keyPairsDecoded0?.append(structure0)
                }
            }
        }
        keyPairs = keyPairsDecoded0
        let nextPageTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextPageToken)
        nextPageToken = nextPageTokenDecoded
    }
}