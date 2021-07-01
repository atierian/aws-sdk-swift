// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetJobDocumentOutputResponseBody: Equatable {
    public let document: String?
}

extension GetJobDocumentOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case document
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let documentDecoded = try containerValues.decodeIfPresent(String.self, forKey: .document)
        document = documentDecoded
    }
}