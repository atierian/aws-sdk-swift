// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ReplicationSet: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case createdBy
        case createdTime
        case deletionProtected
        case lastModifiedBy
        case lastModifiedTime
        case regionMap
        case status
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let createdBy = createdBy {
            try encodeContainer.encode(createdBy, forKey: .createdBy)
        }
        if let createdTime = createdTime {
            try encodeContainer.encode(createdTime.timeIntervalSince1970, forKey: .createdTime)
        }
        if let deletionProtected = deletionProtected {
            try encodeContainer.encode(deletionProtected, forKey: .deletionProtected)
        }
        if let lastModifiedBy = lastModifiedBy {
            try encodeContainer.encode(lastModifiedBy, forKey: .lastModifiedBy)
        }
        if let lastModifiedTime = lastModifiedTime {
            try encodeContainer.encode(lastModifiedTime.timeIntervalSince1970, forKey: .lastModifiedTime)
        }
        if let regionMap = regionMap {
            var regionMapContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .regionMap)
            for (dictKey0, regioninfomap0) in regionMap {
                try regionMapContainer.encode(regioninfomap0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let regionMapContainer = try containerValues.decodeIfPresent([String: RegionInfo?].self, forKey: .regionMap)
        var regionMapDecoded0: [String:RegionInfo]? = nil
        if let regionMapContainer = regionMapContainer {
            regionMapDecoded0 = [String:RegionInfo]()
            for (key0, regioninfo0) in regionMapContainer {
                if let regioninfo0 = regioninfo0 {
                    regionMapDecoded0?[key0] = regioninfo0
                }
            }
        }
        regionMap = regionMapDecoded0
        let statusDecoded = try containerValues.decodeIfPresent(ReplicationSetStatus.self, forKey: .status)
        status = statusDecoded
        let deletionProtectedDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .deletionProtected)
        deletionProtected = deletionProtectedDecoded
        let createdTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdTime)
        createdTime = createdTimeDecoded
        let createdByDecoded = try containerValues.decodeIfPresent(String.self, forKey: .createdBy)
        createdBy = createdByDecoded
        let lastModifiedTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastModifiedTime)
        lastModifiedTime = lastModifiedTimeDecoded
        let lastModifiedByDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lastModifiedBy)
        lastModifiedBy = lastModifiedByDecoded
    }
}