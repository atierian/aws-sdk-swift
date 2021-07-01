// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetBucketLifecycleConfigurationOutputResponseBody: Equatable {
    public let rules: [LifecycleRule]?
}

extension GetBucketLifecycleConfigurationOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case rules = "Rule"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        if containerValues.contains(.rules) {
            let rulesWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CodingKeys.self, forKey: .rules)
            if rulesWrappedContainer != nil {
                let rulesContainer = try containerValues.decodeIfPresent([LifecycleRule].self, forKey: .rules)
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