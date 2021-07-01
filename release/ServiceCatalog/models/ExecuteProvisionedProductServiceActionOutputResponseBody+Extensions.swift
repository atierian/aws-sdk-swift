// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ExecuteProvisionedProductServiceActionOutputResponseBody: Equatable {
    public let recordDetail: RecordDetail?
}

extension ExecuteProvisionedProductServiceActionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case recordDetail = "RecordDetail"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let recordDetailDecoded = try containerValues.decodeIfPresent(RecordDetail.self, forKey: .recordDetail)
        recordDetail = recordDetailDecoded
    }
}