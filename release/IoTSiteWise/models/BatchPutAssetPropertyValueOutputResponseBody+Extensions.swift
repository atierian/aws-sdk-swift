// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct BatchPutAssetPropertyValueOutputResponseBody: Equatable {
    public let errorEntries: [BatchPutAssetPropertyErrorEntry]?
}

extension BatchPutAssetPropertyValueOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case errorEntries
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let errorEntriesContainer = try containerValues.decodeIfPresent([BatchPutAssetPropertyErrorEntry?].self, forKey: .errorEntries)
        var errorEntriesDecoded0:[BatchPutAssetPropertyErrorEntry]? = nil
        if let errorEntriesContainer = errorEntriesContainer {
            errorEntriesDecoded0 = [BatchPutAssetPropertyErrorEntry]()
            for structure0 in errorEntriesContainer {
                if let structure0 = structure0 {
                    errorEntriesDecoded0?.append(structure0)
                }
            }
        }
        errorEntries = errorEntriesDecoded0
    }
}