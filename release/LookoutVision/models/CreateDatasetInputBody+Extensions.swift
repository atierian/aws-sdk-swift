// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateDatasetInputBody: Equatable {
    public let datasetType: String?
    public let datasetSource: DatasetSource?
}

extension CreateDatasetInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case datasetSource = "DatasetSource"
        case datasetType = "DatasetType"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let datasetTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .datasetType)
        datasetType = datasetTypeDecoded
        let datasetSourceDecoded = try containerValues.decodeIfPresent(DatasetSource.self, forKey: .datasetSource)
        datasetSource = datasetSourceDecoded
    }
}