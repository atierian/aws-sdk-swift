// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutPermissionInputBody: Equatable {
    public let principals: [String]?
    public let revisionId: String?
}

extension PutPermissionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case principals
        case revisionId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let principalsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .principals)
        var principalsDecoded0:[String]? = nil
        if let principalsContainer = principalsContainer {
            principalsDecoded0 = [String]()
            for string0 in principalsContainer {
                if let string0 = string0 {
                    principalsDecoded0?.append(string0)
                }
            }
        }
        principals = principalsDecoded0
        let revisionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .revisionId)
        revisionId = revisionIdDecoded
    }
}