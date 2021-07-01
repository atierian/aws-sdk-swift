// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ServiceLimitExceededExceptionBody: Equatable {
    public let limitName: LimitName?
    public let limitValue: Double
    public let message: String?
}

extension ServiceLimitExceededExceptionBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case limitName = "LimitName"
        case limitValue = "LimitValue"
        case message = "Message"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let limitNameDecoded = try containerValues.decodeIfPresent(LimitName.self, forKey: .limitName)
        limitName = limitNameDecoded
        let limitValueDecoded = try containerValues.decode(Double.self, forKey: .limitValue)
        limitValue = limitValueDecoded
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
    }
}