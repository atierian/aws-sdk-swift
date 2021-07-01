// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AutoSnapshotDetails: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case createdAt
        case date
        case fromAttachedDisks
        case status
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let createdAt = createdAt {
            try encodeContainer.encode(createdAt.timeIntervalSince1970, forKey: .createdAt)
        }
        if let date = date {
            try encodeContainer.encode(date, forKey: .date)
        }
        if let fromAttachedDisks = fromAttachedDisks {
            var fromAttachedDisksContainer = encodeContainer.nestedUnkeyedContainer(forKey: .fromAttachedDisks)
            for attacheddisklist0 in fromAttachedDisks {
                try fromAttachedDisksContainer.encode(attacheddisklist0)
            }
        }
        if let status = status {
            try encodeContainer.encode(status.rawValue, forKey: .status)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let dateDecoded = try containerValues.decodeIfPresent(String.self, forKey: .date)
        date = dateDecoded
        let createdAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .createdAt)
        createdAt = createdAtDecoded
        let statusDecoded = try containerValues.decodeIfPresent(AutoSnapshotStatus.self, forKey: .status)
        status = statusDecoded
        let fromAttachedDisksContainer = try containerValues.decodeIfPresent([AttachedDisk?].self, forKey: .fromAttachedDisks)
        var fromAttachedDisksDecoded0:[AttachedDisk]? = nil
        if let fromAttachedDisksContainer = fromAttachedDisksContainer {
            fromAttachedDisksDecoded0 = [AttachedDisk]()
            for structure0 in fromAttachedDisksContainer {
                if let structure0 = structure0 {
                    fromAttachedDisksDecoded0?.append(structure0)
                }
            }
        }
        fromAttachedDisks = fromAttachedDisksDecoded0
    }
}