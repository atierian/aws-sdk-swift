// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeImageBuildersInputBody: Equatable {
    public let names: [String]?
    public let maxResults: Int?
    public let nextToken: String?
}

extension DescribeImageBuildersInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case names = "Names"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let namesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .names)
        var namesDecoded0:[String]? = nil
        if let namesContainer = namesContainer {
            namesDecoded0 = [String]()
            for string0 in namesContainer {
                if let string0 = string0 {
                    namesDecoded0?.append(string0)
                }
            }
        }
        names = namesDecoded0
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}