// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct RejectInboundCrossClusterSearchConnectionOutputResponseBody: Equatable {
    public let crossClusterSearchConnection: InboundCrossClusterSearchConnection?
}

extension RejectInboundCrossClusterSearchConnectionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case crossClusterSearchConnection = "CrossClusterSearchConnection"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let crossClusterSearchConnectionDecoded = try containerValues.decodeIfPresent(InboundCrossClusterSearchConnection.self, forKey: .crossClusterSearchConnection)
        crossClusterSearchConnection = crossClusterSearchConnectionDecoded
    }
}