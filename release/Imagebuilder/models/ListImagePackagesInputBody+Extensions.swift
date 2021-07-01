// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListImagePackagesInputBody: Equatable {
    public let imageBuildVersionArn: String?
    public let maxResults: Int
    public let nextToken: String?
}

extension ListImagePackagesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case imageBuildVersionArn
        case maxResults
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let imageBuildVersionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .imageBuildVersionArn)
        imageBuildVersionArn = imageBuildVersionArnDecoded
        let maxResultsDecoded = try containerValues.decode(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}