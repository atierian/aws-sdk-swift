// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateHomeRegionControlInputBody: Equatable {
    public let homeRegion: String?
    public let target: Target?
    public let dryRun: Bool
}

extension CreateHomeRegionControlInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case homeRegion = "HomeRegion"
        case target = "Target"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let homeRegionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .homeRegion)
        homeRegion = homeRegionDecoded
        let targetDecoded = try containerValues.decodeIfPresent(Target.self, forKey: .target)
        target = targetDecoded
        let dryRunDecoded = try containerValues.decode(Bool.self, forKey: .dryRun)
        dryRun = dryRunDecoded
    }
}