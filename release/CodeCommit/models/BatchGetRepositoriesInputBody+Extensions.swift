// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct BatchGetRepositoriesInputBody: Equatable {
    public let repositoryNames: [String]?
}

extension BatchGetRepositoriesInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case repositoryNames
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let repositoryNamesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .repositoryNames)
        var repositoryNamesDecoded0:[String]? = nil
        if let repositoryNamesContainer = repositoryNamesContainer {
            repositoryNamesDecoded0 = [String]()
            for string0 in repositoryNamesContainer {
                if let string0 = string0 {
                    repositoryNamesDecoded0?.append(string0)
                }
            }
        }
        repositoryNames = repositoryNamesDecoded0
    }
}