// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LoggingOptions: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case detectorDebugOptions
        case enabled
        case level
        case roleArn
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let detectorDebugOptions = detectorDebugOptions {
            var detectorDebugOptionsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .detectorDebugOptions)
            for detectordebugoptions0 in detectorDebugOptions {
                try detectorDebugOptionsContainer.encode(detectordebugoptions0)
            }
        }
        if enabled != false {
            try encodeContainer.encode(enabled, forKey: .enabled)
        }
        if let level = level {
            try encodeContainer.encode(level.rawValue, forKey: .level)
        }
        if let roleArn = roleArn {
            try encodeContainer.encode(roleArn, forKey: .roleArn)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let roleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .roleArn)
        roleArn = roleArnDecoded
        let levelDecoded = try containerValues.decodeIfPresent(LoggingLevel.self, forKey: .level)
        level = levelDecoded
        let enabledDecoded = try containerValues.decode(Bool.self, forKey: .enabled)
        enabled = enabledDecoded
        let detectorDebugOptionsContainer = try containerValues.decodeIfPresent([DetectorDebugOption?].self, forKey: .detectorDebugOptions)
        var detectorDebugOptionsDecoded0:[DetectorDebugOption]? = nil
        if let detectorDebugOptionsContainer = detectorDebugOptionsContainer {
            detectorDebugOptionsDecoded0 = [DetectorDebugOption]()
            for structure0 in detectorDebugOptionsContainer {
                if let structure0 = structure0 {
                    detectorDebugOptionsDecoded0?.append(structure0)
                }
            }
        }
        detectorDebugOptions = detectorDebugOptionsDecoded0
    }
}