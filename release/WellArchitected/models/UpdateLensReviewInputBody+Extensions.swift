// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdateLensReviewInputBody: Equatable {
    public let lensNotes: String?
    public let pillarNotes: [String:String]?
}

extension UpdateLensReviewInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case lensNotes = "LensNotes"
        case pillarNotes = "PillarNotes"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let lensNotesDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lensNotes)
        lensNotes = lensNotesDecoded
        let pillarNotesContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .pillarNotes)
        var pillarNotesDecoded0: [String:String]? = nil
        if let pillarNotesContainer = pillarNotesContainer {
            pillarNotesDecoded0 = [String:String]()
            for (key0, notes0) in pillarNotesContainer {
                if let notes0 = notes0 {
                    pillarNotesDecoded0?[key0] = notes0
                }
            }
        }
        pillarNotes = pillarNotesDecoded0
    }
}