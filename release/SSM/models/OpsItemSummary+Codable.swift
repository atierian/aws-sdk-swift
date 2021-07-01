// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension OpsItemSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case actualEndTime = "ActualEndTime"
        case actualStartTime = "ActualStartTime"
        case category = "Category"
        case createdBy = "CreatedBy"
        case createdTime = "CreatedTime"
        case lastModifiedBy = "LastModifiedBy"
        case lastModifiedTime = "LastModifiedTime"
        case operationalData = "OperationalData"
        case opsItemId = "OpsItemId"
        case opsItemType = "OpsItemType"
        case plannedEndTime = "PlannedEndTime"
        case plannedStartTime = "PlannedStartTime"
        case priority = "Priority"
        case severity = "Severity"
        case source = "Source"
        case status = "Status"
        case title = "Title"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let actualEndTime = actualEndTime {
            try encodeContainer.encode(actualEndTime.timeIntervalSince1970, forKey: .actualEndTime)
        }
        if let actualStartTime = actualStartTime {
            try encodeContainer.encode(actualStartTime.timeIntervalSince1970, forKey: .actualStartTime)
        }
        if let category = category {
            try encodeContainer.encode(category, forKey: .category)
        }
        if let createdBy = createdBy {
            try encodeContainer.encode(createdBy, forKey: .createdBy)
        }
        if let createdTime = createdTime {
            try encodeContainer.encode(createdTime.timeIntervalSince1970, forKey: .createdTime)
        }
        if let lastModifiedBy = lastModifiedBy {
            try encodeContainer.encode(lastModifiedBy, forKey: .lastModifiedBy)
        }
        if let lastModifiedTime = lastModifiedTime {
            try encodeContainer.encode(lastModifiedTime.timeIntervalSince1970, forKey: .lastModifiedTime)
        }
        if let operationalData = operationalData {
            var operationalDataContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .operationalData)
            for (dictKey0, opsitemoperationaldata0) in operationalData {
                try operationalDataContainer.encode(opsitemoperationaldata0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let opsItemId = opsItemId {
            try encodeContainer.encode(opsItemId, forKey: .opsItemId)
        }
        if let opsItemType = opsItemType {
            try encodeContainer.encode(opsItemType, forKey: .opsItemType)
        }
        if let plannedEndTime = plannedEndTime {
            try encodeContainer.encode(plannedEndTime.timeIntervalSince1970, forKey: .plannedEndTime)
        }
        if let plannedStartTime = plannedStartTime {
            try encodeContainer.encode(plannedStartTime.timeIntervalSince1970, forKey: .plannedStartTime)
        }
        if let priority = priority {
            try encodeContainer.encode(priority, forKey: .priority)
        }
        if let severity = severity {
            try encodeContainer.encode(severity, forKey: .severity)
        }
        if let source = source {
            try encodeContainer.encode(source, forKey: .source)
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
        if let title = title {
            try encodeContainer.encode(title, forKey: .title)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let createdByDecoded = try containerValues.decodeIfPresent(String.self, forKey: .createdBy)
        createdBy = createdByDecoded
        let createdTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdTime)
        createdTime = createdTimeDecoded
        let lastModifiedByDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastModifiedBy)
        lastModifiedBy = lastModifiedByDecoded
        let lastModifiedTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModifiedTime)
        lastModifiedTime = lastModifiedTimeDecoded
        let priorityDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .priority)
        priority = priorityDecoded
        let sourceDecoded = try containerValues.decodeIfPresent(String.self, forKey: .source)
        source = sourceDecoded
        let statusDecoded = try containerValues.decodeIfPresent(OpsItemStatus.self, forKey: .status)
        status = statusDecoded
        let opsItemIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .opsItemId)
        opsItemId = opsItemIdDecoded
        let titleDecoded = try containerValues.decodeIfPresent(String.self, forKey: .title)
        title = titleDecoded
        let operationalDataContainer = try containerValues.decodeIfPresent([String: OpsItemDataValue?].self, forKey: .operationalData)
        var operationalDataDecoded0: [String:OpsItemDataValue]? = nil
        if let operationalDataContainer = operationalDataContainer {
            operationalDataDecoded0 = [String:OpsItemDataValue]()
            for (key0, opsitemdatavalue0) in operationalDataContainer {
                if let opsitemdatavalue0 = opsitemdatavalue0 {
                    operationalDataDecoded0?[key0] = opsitemdatavalue0
                }
            }
        }
        operationalData = operationalDataDecoded0
        let categoryDecoded = try containerValues.decodeIfPresent(String.self, forKey: .category)
        category = categoryDecoded
        let severityDecoded = try containerValues.decodeIfPresent(String.self, forKey: .severity)
        severity = severityDecoded
        let opsItemTypeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .opsItemType)
        opsItemType = opsItemTypeDecoded
        let actualStartTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .actualStartTime)
        actualStartTime = actualStartTimeDecoded
        let actualEndTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .actualEndTime)
        actualEndTime = actualEndTimeDecoded
        let plannedStartTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .plannedStartTime)
        plannedStartTime = plannedStartTimeDecoded
        let plannedEndTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .plannedEndTime)
        plannedEndTime = plannedEndTimeDecoded
    }
}