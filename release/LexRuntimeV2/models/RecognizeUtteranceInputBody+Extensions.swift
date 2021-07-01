// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct RecognizeUtteranceInputBody: Equatable {
    public let inputStream: Data?
}

extension RecognizeUtteranceInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case inputStream
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let inputStreamDecoded = try containerValues.decodeIfPresent(Data.self, forKey: .inputStream)
        inputStream = inputStreamDecoded
    }
}