// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateRepositoryOutputResponseBody: Equatable {
    public let repository: Repository?
}

extension CreateRepositoryOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case repository
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let repositoryDecoded = try containerValues.decodeIfPresent(Repository.self, forKey: .repository)
        repository = repositoryDecoded
    }
}