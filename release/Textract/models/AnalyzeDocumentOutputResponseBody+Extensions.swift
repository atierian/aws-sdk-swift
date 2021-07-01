// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct AnalyzeDocumentOutputResponseBody: Equatable {
    public let documentMetadata: DocumentMetadata?
    public let blocks: [Block]?
    public let humanLoopActivationOutput: HumanLoopActivationOutput?
    public let analyzeDocumentModelVersion: String?
}

extension AnalyzeDocumentOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case analyzeDocumentModelVersion = "AnalyzeDocumentModelVersion"
        case blocks = "Blocks"
        case documentMetadata = "DocumentMetadata"
        case humanLoopActivationOutput = "HumanLoopActivationOutput"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let documentMetadataDecoded = try containerValues.decodeIfPresent(DocumentMetadata.self, forKey: .documentMetadata)
        documentMetadata = documentMetadataDecoded
        let blocksContainer = try containerValues.decodeIfPresent([Block?].self, forKey: .blocks)
        var blocksDecoded0:[Block]? = nil
        if let blocksContainer = blocksContainer {
            blocksDecoded0 = [Block]()
            for structure0 in blocksContainer {
                if let structure0 = structure0 {
                    blocksDecoded0?.append(structure0)
                }
            }
        }
        blocks = blocksDecoded0
        let humanLoopActivationOutputDecoded = try containerValues.decodeIfPresent(HumanLoopActivationOutput.self, forKey: .humanLoopActivationOutput)
        humanLoopActivationOutput = humanLoopActivationOutputDecoded
        let analyzeDocumentModelVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .analyzeDocumentModelVersion)
        analyzeDocumentModelVersion = analyzeDocumentModelVersionDecoded
    }
}