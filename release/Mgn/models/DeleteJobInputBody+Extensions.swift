// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteJobInputBody: Equatable {
    public let jobID: String?
}

extension DeleteJobInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case jobID
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let jobIDDecoded = try containerValues.decodeIfPresent(String.self, forKey: .jobID)
        jobID = jobIDDecoded
    }
}