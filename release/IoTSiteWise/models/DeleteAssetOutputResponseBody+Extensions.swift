// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteAssetOutputResponseBody: Equatable {
    public let assetStatus: AssetStatus?
}

extension DeleteAssetOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case assetStatus
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let assetStatusDecoded = try containerValues.decodeIfPresent(AssetStatus.self, forKey: .assetStatus)
        assetStatus = assetStatusDecoded
    }
}