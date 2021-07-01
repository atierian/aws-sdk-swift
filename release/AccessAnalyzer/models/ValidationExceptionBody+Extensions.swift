// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ValidationExceptionBody: Equatable {
    public let message: String?
    public let reason: ValidationExceptionReason?
    public let fieldList: [ValidationExceptionField]?
}

extension ValidationExceptionBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case fieldList
        case message
        case reason
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
        let reasonDecoded = try containerValues.decodeIfPresent(ValidationExceptionReason.self, forKey: .reason)
        reason = reasonDecoded
        let fieldListContainer = try containerValues.decodeIfPresent([ValidationExceptionField?].self, forKey: .fieldList)
        var fieldListDecoded0:[ValidationExceptionField]? = nil
        if let fieldListContainer = fieldListContainer {
            fieldListDecoded0 = [ValidationExceptionField]()
            for structure0 in fieldListContainer {
                if let structure0 = structure0 {
                    fieldListDecoded0?.append(structure0)
                }
            }
        }
        fieldList = fieldListDecoded0
    }
}