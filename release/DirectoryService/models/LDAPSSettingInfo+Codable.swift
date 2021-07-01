// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LDAPSSettingInfo: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case lDAPSStatus = "LDAPSStatus"
        case lDAPSStatusReason = "LDAPSStatusReason"
        case lastUpdatedDateTime = "LastUpdatedDateTime"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let lDAPSStatus = lDAPSStatus {
            try encodeContainer.encode(lDAPSStatus.rawValue, forKey: .lDAPSStatus)
        }
        if let lDAPSStatusReason = lDAPSStatusReason {
            try encodeContainer.encode(lDAPSStatusReason, forKey: .lDAPSStatusReason)
        }
        if let lastUpdatedDateTime = lastUpdatedDateTime {
            try encodeContainer.encode(lastUpdatedDateTime.timeIntervalSince1970, forKey: .lastUpdatedDateTime)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let lDAPSStatusDecoded = try containerValues.decodeIfPresent(LDAPSStatus.self, forKey: .lDAPSStatus)
        lDAPSStatus = lDAPSStatusDecoded
        let lDAPSStatusReasonDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lDAPSStatusReason)
        lDAPSStatusReason = lDAPSStatusReasonDecoded
        let lastUpdatedDateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastUpdatedDateTime)
        lastUpdatedDateTime = lastUpdatedDateTimeDecoded
    }
}