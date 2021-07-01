// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetBucketOutputResponseBody: Equatable {
    public let bucket: String?
    public let publicAccessBlockEnabled: Bool
    public let creationDate: Date?
}

extension GetBucketOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case bucket = "Bucket"
        case creationDate = "CreationDate"
        case publicAccessBlockEnabled = "PublicAccessBlockEnabled"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let bucketDecoded = try containerValues.decodeIfPresent(String.self, forKey: .bucket)
        bucket = bucketDecoded
        let publicAccessBlockEnabledDecoded = try containerValues.decode(Bool.self, forKey: .publicAccessBlockEnabled)
        publicAccessBlockEnabled = publicAccessBlockEnabledDecoded
        let creationDateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .creationDate)
        var creationDateBuffer:Date? = nil
        if let creationDateDecoded = creationDateDecoded {
            creationDateBuffer = try TimestampWrapperDecoder.parseDateStringValue(creationDateDecoded, format: .dateTime)
        }
        creationDate = creationDateBuffer
    }
}