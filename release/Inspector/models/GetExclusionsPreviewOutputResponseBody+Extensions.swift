// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetExclusionsPreviewOutputResponseBody: Equatable {
    public let previewStatus: PreviewStatus?
    public let exclusionPreviews: [ExclusionPreview]?
    public let nextToken: String?
}

extension GetExclusionsPreviewOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case exclusionPreviews
        case nextToken
        case previewStatus
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let previewStatusDecoded = try containerValues.decodeIfPresent(PreviewStatus.self, forKey: .previewStatus)
        previewStatus = previewStatusDecoded
        let exclusionPreviewsContainer = try containerValues.decodeIfPresent([ExclusionPreview?].self, forKey: .exclusionPreviews)
        var exclusionPreviewsDecoded0:[ExclusionPreview]? = nil
        if let exclusionPreviewsContainer = exclusionPreviewsContainer {
            exclusionPreviewsDecoded0 = [ExclusionPreview]()
            for structure0 in exclusionPreviewsContainer {
                if let structure0 = structure0 {
                    exclusionPreviewsDecoded0?.append(structure0)
                }
            }
        }
        exclusionPreviews = exclusionPreviewsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}