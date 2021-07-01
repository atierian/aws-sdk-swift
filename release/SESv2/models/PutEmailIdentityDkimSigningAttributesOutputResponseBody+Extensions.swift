// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutEmailIdentityDkimSigningAttributesOutputResponseBody: Equatable {
    public let dkimStatus: DkimStatus?
    public let dkimTokens: [String]?
}

extension PutEmailIdentityDkimSigningAttributesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case dkimStatus = "DkimStatus"
        case dkimTokens = "DkimTokens"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dkimStatusDecoded = try containerValues.decodeIfPresent(DkimStatus.self, forKey: .dkimStatus)
        dkimStatus = dkimStatusDecoded
        let dkimTokensContainer = try containerValues.decodeIfPresent([String?].self, forKey: .dkimTokens)
        var dkimTokensDecoded0:[String]? = nil
        if let dkimTokensContainer = dkimTokensContainer {
            dkimTokensDecoded0 = [String]()
            for string0 in dkimTokensContainer {
                if let string0 = string0 {
                    dkimTokensDecoded0?.append(string0)
                }
            }
        }
        dkimTokens = dkimTokensDecoded0
    }
}