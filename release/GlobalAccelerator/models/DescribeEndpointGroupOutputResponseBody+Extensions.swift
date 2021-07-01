// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeEndpointGroupOutputResponseBody: Equatable {
    public let endpointGroup: EndpointGroup?
}

extension DescribeEndpointGroupOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case endpointGroup = "EndpointGroup"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let endpointGroupDecoded = try containerValues.decodeIfPresent(EndpointGroup.self, forKey: .endpointGroup)
        endpointGroup = endpointGroupDecoded
    }
}