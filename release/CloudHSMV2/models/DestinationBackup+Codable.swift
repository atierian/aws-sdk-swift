// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DestinationBackup: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case createTimestamp = "CreateTimestamp"
        case sourceBackup = "SourceBackup"
        case sourceCluster = "SourceCluster"
        case sourceRegion = "SourceRegion"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let createTimestamp = createTimestamp {
            try encodeContainer.encode(createTimestamp.timeIntervalSince1970, forKey: .createTimestamp)
        }
        if let sourceBackup = sourceBackup {
            try encodeContainer.encode(sourceBackup, forKey: .sourceBackup)
        }
        if let sourceCluster = sourceCluster {
            try encodeContainer.encode(sourceCluster, forKey: .sourceCluster)
        }
        if let sourceRegion = sourceRegion {
            try encodeContainer.encode(sourceRegion, forKey: .sourceRegion)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let createTimestampDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createTimestamp)
        createTimestamp = createTimestampDecoded
        let sourceRegionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceRegion)
        sourceRegion = sourceRegionDecoded
        let sourceBackupDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceBackup)
        sourceBackup = sourceBackupDecoded
        let sourceClusterDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sourceCluster)
        sourceCluster = sourceClusterDecoded
    }
}