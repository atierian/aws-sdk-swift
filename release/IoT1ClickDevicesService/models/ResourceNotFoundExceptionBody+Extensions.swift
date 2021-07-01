// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ResourceNotFoundExceptionBody: Equatable {
    public let code: String?
    public let message: String?
}

extension ResourceNotFoundExceptionBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case code = "code"
        case message = "message"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let codeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .code)
        code = codeDecoded
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
    }
}