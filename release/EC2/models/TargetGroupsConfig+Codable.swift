// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TargetGroupsConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case targetGroups = "targetGroups"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if let targetGroups = targetGroups {
            if !targetGroups.isEmpty {
                for (index0, targetgroup0) in targetGroups.enumerated() {
                    var targetGroupsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("TargetGroups.\(index0.advanced(by: 1))"))
                    try targetGroupsContainer0.encode(targetgroup0, forKey: Key(""))
                }
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        if containerValues.contains(.targetGroups) {
            struct KeyVal0{struct item{}}
            let targetGroupsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .targetGroups)
            if let targetGroupsWrappedContainer = targetGroupsWrappedContainer {
                let targetGroupsContainer = try targetGroupsWrappedContainer.decodeIfPresent([TargetGroup].self, forKey: .member)
                var targetGroupsBuffer:[TargetGroup]? = nil
                if let targetGroupsContainer = targetGroupsContainer {
                    targetGroupsBuffer = [TargetGroup]()
                    for structureContainer0 in targetGroupsContainer {
                        targetGroupsBuffer?.append(structureContainer0)
                    }
                }
                targetGroups = targetGroupsBuffer
            } else {
                targetGroups = []
            }
        } else {
            targetGroups = nil
        }
    }
}