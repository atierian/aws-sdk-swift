// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct InitiateLayerUploadOutputResponseBody: Equatable {
    public let uploadId: String?
    public let partSize: Int?
}

extension InitiateLayerUploadOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case partSize
        case uploadId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let uploadIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .uploadId)
        uploadId = uploadIdDecoded
        let partSizeDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .partSize)
        partSize = partSizeDecoded
    }
}