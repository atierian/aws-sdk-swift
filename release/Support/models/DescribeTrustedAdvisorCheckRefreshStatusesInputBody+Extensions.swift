// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeTrustedAdvisorCheckRefreshStatusesInputBody: Equatable {
    public let checkIds: [String]?
}

extension DescribeTrustedAdvisorCheckRefreshStatusesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case checkIds
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let checkIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .checkIds)
        var checkIdsDecoded0:[String]? = nil
        if let checkIdsContainer = checkIdsContainer {
            checkIdsDecoded0 = [String]()
            for string0 in checkIdsContainer {
                if let string0 = string0 {
                    checkIdsDecoded0?.append(string0)
                }
            }
        }
        checkIds = checkIdsDecoded0
    }
}