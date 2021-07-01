// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateWebACLOutputResponseBody: Equatable {
    public let webACL: WebACL?
    public let changeToken: String?
}

extension CreateWebACLOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case changeToken = "ChangeToken"
        case webACL = "WebACL"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let webACLDecoded = try containerValues.decodeIfPresent(WebACL.self, forKey: .webACL)
        webACL = webACLDecoded
        let changeTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .changeToken)
        changeToken = changeTokenDecoded
    }
}