// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AwsSsmComplianceSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case complianceType = "ComplianceType"
        case compliantCriticalCount = "CompliantCriticalCount"
        case compliantHighCount = "CompliantHighCount"
        case compliantInformationalCount = "CompliantInformationalCount"
        case compliantLowCount = "CompliantLowCount"
        case compliantMediumCount = "CompliantMediumCount"
        case compliantUnspecifiedCount = "CompliantUnspecifiedCount"
        case executionType = "ExecutionType"
        case nonCompliantCriticalCount = "NonCompliantCriticalCount"
        case nonCompliantHighCount = "NonCompliantHighCount"
        case nonCompliantInformationalCount = "NonCompliantInformationalCount"
        case nonCompliantLowCount = "NonCompliantLowCount"
        case nonCompliantMediumCount = "NonCompliantMediumCount"
        case nonCompliantUnspecifiedCount = "NonCompliantUnspecifiedCount"
        case overallSeverity = "OverallSeverity"
        case patchBaselineId = "PatchBaselineId"
        case patchGroup = "PatchGroup"
        case status = "Status"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let complianceType = complianceType {
            try encodeContainer.encode(complianceType, forKey: .complianceType)
        }
        if compliantCriticalCount != 0 {
            try encodeContainer.encode(compliantCriticalCount, forKey: .compliantCriticalCount)
        }
        if compliantHighCount != 0 {
            try encodeContainer.encode(compliantHighCount, forKey: .compliantHighCount)
        }
        if compliantInformationalCount != 0 {
            try encodeContainer.encode(compliantInformationalCount, forKey: .compliantInformationalCount)
        }
        if compliantLowCount != 0 {
            try encodeContainer.encode(compliantLowCount, forKey: .compliantLowCount)
        }
        if compliantMediumCount != 0 {
            try encodeContainer.encode(compliantMediumCount, forKey: .compliantMediumCount)
        }
        if compliantUnspecifiedCount != 0 {
            try encodeContainer.encode(compliantUnspecifiedCount, forKey: .compliantUnspecifiedCount)
        }
        if let executionType = executionType {
            try encodeContainer.encode(executionType, forKey: .executionType)
        }
        if nonCompliantCriticalCount != 0 {
            try encodeContainer.encode(nonCompliantCriticalCount, forKey: .nonCompliantCriticalCount)
        }
        if nonCompliantHighCount != 0 {
            try encodeContainer.encode(nonCompliantHighCount, forKey: .nonCompliantHighCount)
        }
        if nonCompliantInformationalCount != 0 {
            try encodeContainer.encode(nonCompliantInformationalCount, forKey: .nonCompliantInformationalCount)
        }
        if nonCompliantLowCount != 0 {
            try encodeContainer.encode(nonCompliantLowCount, forKey: .nonCompliantLowCount)
        }
        if nonCompliantMediumCount != 0 {
            try encodeContainer.encode(nonCompliantMediumCount, forKey: .nonCompliantMediumCount)
        }
        if nonCompliantUnspecifiedCount != 0 {
            try encodeContainer.encode(nonCompliantUnspecifiedCount, forKey: .nonCompliantUnspecifiedCount)
        }
        if let overallSeverity = overallSeverity {
            try encodeContainer.encode(overallSeverity, forKey: .overallSeverity)
        }
        if let patchBaselineId = patchBaselineId {
            try encodeContainer.encode(patchBaselineId, forKey: .patchBaselineId)
        }
        if let patchGroup = patchGroup {
            try encodeContainer.encode(patchGroup, forKey: .patchGroup)
        }
        if let status = status {
            try encodeContainer.encode(status, forKey: .status)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let statusDecoded = try containerValues.decodeIfPresent(String.self, forKey: .status)
        status = statusDecoded
        let compliantCriticalCountDecoded = try containerValues.decode(Int.self, forKey: .compliantCriticalCount)
        compliantCriticalCount = compliantCriticalCountDecoded
        let compliantHighCountDecoded = try containerValues.decode(Int.self, forKey: .compliantHighCount)
        compliantHighCount = compliantHighCountDecoded
        let compliantMediumCountDecoded = try containerValues.decode(Int.self, forKey: .compliantMediumCount)
        compliantMediumCount = compliantMediumCountDecoded
        let executionTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .executionType)
        executionType = executionTypeDecoded
        let nonCompliantCriticalCountDecoded = try containerValues.decode(Int.self, forKey: .nonCompliantCriticalCount)
        nonCompliantCriticalCount = nonCompliantCriticalCountDecoded
        let compliantInformationalCountDecoded = try containerValues.decode(Int.self, forKey: .compliantInformationalCount)
        compliantInformationalCount = compliantInformationalCountDecoded
        let nonCompliantInformationalCountDecoded = try containerValues.decode(Int.self, forKey: .nonCompliantInformationalCount)
        nonCompliantInformationalCount = nonCompliantInformationalCountDecoded
        let compliantUnspecifiedCountDecoded = try containerValues.decode(Int.self, forKey: .compliantUnspecifiedCount)
        compliantUnspecifiedCount = compliantUnspecifiedCountDecoded
        let nonCompliantLowCountDecoded = try containerValues.decode(Int.self, forKey: .nonCompliantLowCount)
        nonCompliantLowCount = nonCompliantLowCountDecoded
        let nonCompliantHighCountDecoded = try containerValues.decode(Int.self, forKey: .nonCompliantHighCount)
        nonCompliantHighCount = nonCompliantHighCountDecoded
        let compliantLowCountDecoded = try containerValues.decode(Int.self, forKey: .compliantLowCount)
        compliantLowCount = compliantLowCountDecoded
        let complianceTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .complianceType)
        complianceType = complianceTypeDecoded
        let patchBaselineIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .patchBaselineId)
        patchBaselineId = patchBaselineIdDecoded
        let overallSeverityDecoded = try containerValues.decodeIfPresent(String.self, forKey: .overallSeverity)
        overallSeverity = overallSeverityDecoded
        let nonCompliantMediumCountDecoded = try containerValues.decode(Int.self, forKey: .nonCompliantMediumCount)
        nonCompliantMediumCount = nonCompliantMediumCountDecoded
        let nonCompliantUnspecifiedCountDecoded = try containerValues.decode(Int.self, forKey: .nonCompliantUnspecifiedCount)
        nonCompliantUnspecifiedCount = nonCompliantUnspecifiedCountDecoded
        let patchGroupDecoded = try containerValues.decodeIfPresent(String.self, forKey: .patchGroup)
        patchGroup = patchGroupDecoded
    }
}