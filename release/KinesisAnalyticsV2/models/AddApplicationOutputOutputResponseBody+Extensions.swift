// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct AddApplicationOutputOutputResponseBody: Equatable {
    public let applicationARN: String?
    public let applicationVersionId: Int?
    public let outputDescriptions: [OutputDescription]?
}

extension AddApplicationOutputOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case applicationARN = "ApplicationARN"
        case applicationVersionId = "ApplicationVersionId"
        case outputDescriptions = "OutputDescriptions"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let applicationARNDecoded = try containerValues.decodeIfPresent(String.self, forKey: .applicationARN)
        applicationARN = applicationARNDecoded
        let applicationVersionIdDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .applicationVersionId)
        applicationVersionId = applicationVersionIdDecoded
        let outputDescriptionsContainer = try containerValues.decodeIfPresent([OutputDescription?].self, forKey: .outputDescriptions)
        var outputDescriptionsDecoded0:[OutputDescription]? = nil
        if let outputDescriptionsContainer = outputDescriptionsContainer {
            outputDescriptionsDecoded0 = [OutputDescription]()
            for structure0 in outputDescriptionsContainer {
                if let structure0 = structure0 {
                    outputDescriptionsDecoded0?.append(structure0)
                }
            }
        }
        outputDescriptions = outputDescriptionsDecoded0
    }
}