// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Target: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case destinationReference
        case repositoryName
        case sourceReference
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let destinationReference = destinationReference {
            try encodeContainer.encode(destinationReference, forKey: .destinationReference)
        }
        if let repositoryName = repositoryName {
            try encodeContainer.encode(repositoryName, forKey: .repositoryName)
        }
        if let sourceReference = sourceReference {
            try encodeContainer.encode(sourceReference, forKey: .sourceReference)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let repositoryNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .repositoryName)
        repositoryName = repositoryNameDecoded
        let sourceReferenceDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceReference)
        sourceReference = sourceReferenceDecoded
        let destinationReferenceDecoded = try containerValues.decodeIfPresent(String.self, forKey: .destinationReference)
        destinationReference = destinationReferenceDecoded
    }
}