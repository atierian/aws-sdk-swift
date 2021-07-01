// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TargetInstances: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case autoScalingGroups
        case ec2TagSet
        case tagFilters
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let autoScalingGroups = autoScalingGroups {
            var autoScalingGroupsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .autoScalingGroups)
            for autoscalinggroupnamelist0 in autoScalingGroups {
                try autoScalingGroupsContainer.encode(autoscalinggroupnamelist0)
            }
        }
        if let ec2TagSet = ec2TagSet {
            try encodeContainer.encode(ec2TagSet, forKey: .ec2TagSet)
        }
        if let tagFilters = tagFilters {
            var tagFiltersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tagFilters)
            for ec2tagfilterlist0 in tagFilters {
                try tagFiltersContainer.encode(ec2tagfilterlist0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let tagFiltersContainer = try containerValues.decodeIfPresent([EC2TagFilter?].self, forKey: .tagFilters)
        var tagFiltersDecoded0:[EC2TagFilter]? = nil
        if let tagFiltersContainer = tagFiltersContainer {
            tagFiltersDecoded0 = [EC2TagFilter]()
            for structure0 in tagFiltersContainer {
                if let structure0 = structure0 {
                    tagFiltersDecoded0?.append(structure0)
                }
            }
        }
        tagFilters = tagFiltersDecoded0
        let autoScalingGroupsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .autoScalingGroups)
        var autoScalingGroupsDecoded0:[String]? = nil
        if let autoScalingGroupsContainer = autoScalingGroupsContainer {
            autoScalingGroupsDecoded0 = [String]()
            for string0 in autoScalingGroupsContainer {
                if let string0 = string0 {
                    autoScalingGroupsDecoded0?.append(string0)
                }
            }
        }
        autoScalingGroups = autoScalingGroupsDecoded0
        let ec2TagSetDecoded = try containerValues.decodeIfPresent(EC2TagSet.self, forKey: .ec2TagSet)
        ec2TagSet = ec2TagSetDecoded
    }
}