// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RunCommandParameters: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case runCommandTargets = "RunCommandTargets"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let runCommandTargets = runCommandTargets {
            var runCommandTargetsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .runCommandTargets)
            for runcommandtargets0 in runCommandTargets {
                try runCommandTargetsContainer.encode(runcommandtargets0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let runCommandTargetsContainer = try containerValues.decodeIfPresent([RunCommandTarget?].self, forKey: .runCommandTargets)
        var runCommandTargetsDecoded0:[RunCommandTarget]? = nil
        if let runCommandTargetsContainer = runCommandTargetsContainer {
            runCommandTargetsDecoded0 = [RunCommandTarget]()
            for structure0 in runCommandTargetsContainer {
                if let structure0 = structure0 {
                    runCommandTargetsDecoded0?.append(structure0)
                }
            }
        }
        runCommandTargets = runCommandTargetsDecoded0
    }
}