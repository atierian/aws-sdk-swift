// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteTemplateAliasOutputResponseBody: Equatable {
    public let status: Int
    public let templateId: String?
    public let aliasName: String?
    public let arn: String?
    public let requestId: String?
}

extension DeleteTemplateAliasOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case aliasName = "AliasName"
        case arn = "Arn"
        case requestId = "RequestId"
        case status = "Status"
        case templateId = "TemplateId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let statusDecoded = try containerValues.decode(Int.self, forKey: .status)
        status = statusDecoded
        let templateIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .templateId)
        templateId = templateIdDecoded
        let aliasNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .aliasName)
        aliasName = aliasNameDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let requestIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .requestId)
        requestId = requestIdDecoded
    }
}