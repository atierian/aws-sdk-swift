// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListAccessPreviewFindingsOutputResponseBody: Equatable {
    public let findings: [AccessPreviewFinding]?
    public let nextToken: String?
}

extension ListAccessPreviewFindingsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case findings
        case nextToken
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let findingsContainer = try containerValues.decodeIfPresent([AccessPreviewFinding?].self, forKey: .findings)
        var findingsDecoded0:[AccessPreviewFinding]? = nil
        if let findingsContainer = findingsContainer {
            findingsDecoded0 = [AccessPreviewFinding]()
            for structure0 in findingsContainer {
                if let structure0 = structure0 {
                    findingsDecoded0?.append(structure0)
                }
            }
        }
        findings = findingsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}