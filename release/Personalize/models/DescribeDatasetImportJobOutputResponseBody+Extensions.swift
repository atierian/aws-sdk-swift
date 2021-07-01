// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeDatasetImportJobOutputResponseBody: Equatable {
    public let datasetImportJob: DatasetImportJob?
}

extension DescribeDatasetImportJobOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case datasetImportJob
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let datasetImportJobDecoded = try containerValues.decodeIfPresent(DatasetImportJob.self, forKey: .datasetImportJob)
        datasetImportJob = datasetImportJobDecoded
    }
}