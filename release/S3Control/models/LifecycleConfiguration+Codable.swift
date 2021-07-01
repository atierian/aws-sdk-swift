// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LifecycleConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case rules = "Rules"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://awss3control.amazonaws.com/doc/2018-08-20/", forKey: Key("xmlns"))
        }
        if let rules = rules {
            var rulesContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("rules"))
            for lifecyclerule0 in rules {
                try rulesContainer.encode(lifecyclerule0, forKey: Key("Rule"))
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        if containerValues.contains(.rules) {
            struct KeyVal0{struct Rule{}}
            let rulesWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.Rule>.CodingKeys.self, forKey: .rules)
            if let rulesWrappedContainer = rulesWrappedContainer {
                let rulesContainer = try rulesWrappedContainer.decodeIfPresent([LifecycleRule].self, forKey: .member)
                var rulesBuffer:[LifecycleRule]? = nil
                if let rulesContainer = rulesContainer {
                    rulesBuffer = [LifecycleRule]()
                    for structureContainer0 in rulesContainer {
                        rulesBuffer?.append(structureContainer0)
                    }
                }
                rules = rulesBuffer
            } else {
                rules = []
            }
        } else {
            rules = nil
        }
    }
}