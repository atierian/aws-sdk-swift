// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetOpsMetadataInputBody: Equatable {
    public let opsMetadataArn: String?
    public let maxResults: Int
    public let nextToken: String?
}

extension GetOpsMetadataInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case opsMetadataArn = "OpsMetadataArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let opsMetadataArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .opsMetadataArn)
        opsMetadataArn = opsMetadataArnDecoded
        let maxResultsDecoded = try containerValues.decode(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}