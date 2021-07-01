// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AutoMLJobArtifacts: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case candidateDefinitionNotebookLocation = "CandidateDefinitionNotebookLocation"
        case dataExplorationNotebookLocation = "DataExplorationNotebookLocation"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let candidateDefinitionNotebookLocation = candidateDefinitionNotebookLocation {
            try encodeContainer.encode(candidateDefinitionNotebookLocation, forKey: .candidateDefinitionNotebookLocation)
        }
        if let dataExplorationNotebookLocation = dataExplorationNotebookLocation {
            try encodeContainer.encode(dataExplorationNotebookLocation, forKey: .dataExplorationNotebookLocation)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let candidateDefinitionNotebookLocationDecoded = try containerValues.decodeIfPresent(String.self, forKey: .candidateDefinitionNotebookLocation)
        candidateDefinitionNotebookLocation = candidateDefinitionNotebookLocationDecoded
        let dataExplorationNotebookLocationDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dataExplorationNotebookLocation)
        dataExplorationNotebookLocation = dataExplorationNotebookLocationDecoded
    }
}