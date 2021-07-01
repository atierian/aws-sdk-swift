// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ConnectionPoolConfigurationInfo: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case connectionBorrowTimeout = "ConnectionBorrowTimeout"
        case initQuery = "InitQuery"
        case maxConnectionsPercent = "MaxConnectionsPercent"
        case maxIdleConnectionsPercent = "MaxIdleConnectionsPercent"
        case sessionPinningFilters = "SessionPinningFilters"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if connectionBorrowTimeout != 0 {
            try container.encode(connectionBorrowTimeout, forKey: Key("ConnectionBorrowTimeout"))
        }
        if let initQuery = initQuery {
            try container.encode(initQuery, forKey: Key("InitQuery"))
        }
        if maxConnectionsPercent != 0 {
            try container.encode(maxConnectionsPercent, forKey: Key("MaxConnectionsPercent"))
        }
        if maxIdleConnectionsPercent != 0 {
            try container.encode(maxIdleConnectionsPercent, forKey: Key("MaxIdleConnectionsPercent"))
        }
        if let sessionPinningFilters = sessionPinningFilters {
            var sessionPinningFiltersContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("SessionPinningFilters"))
            for (index0, string0) in sessionPinningFilters.enumerated() {
                try sessionPinningFiltersContainer.encode(string0, forKey: Key("member.\(index0.advanced(by: 1))"))
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let maxConnectionsPercentDecoded = try containerValues.decode(Int.self, forKey: .maxConnectionsPercent)
        maxConnectionsPercent = maxConnectionsPercentDecoded
        let maxIdleConnectionsPercentDecoded = try containerValues.decode(Int.self, forKey: .maxIdleConnectionsPercent)
        maxIdleConnectionsPercent = maxIdleConnectionsPercentDecoded
        let connectionBorrowTimeoutDecoded = try containerValues.decode(Int.self, forKey: .connectionBorrowTimeout)
        connectionBorrowTimeout = connectionBorrowTimeoutDecoded
        if containerValues.contains(.sessionPinningFilters) {
            struct KeyVal0{struct member{}}
            let sessionPinningFiltersWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.member>.CodingKeys.self, forKey: .sessionPinningFilters)
            if let sessionPinningFiltersWrappedContainer = sessionPinningFiltersWrappedContainer {
                let sessionPinningFiltersContainer = try sessionPinningFiltersWrappedContainer.decodeIfPresent([String].self, forKey: .member)
                var sessionPinningFiltersBuffer:[String]? = nil
                if let sessionPinningFiltersContainer = sessionPinningFiltersContainer {
                    sessionPinningFiltersBuffer = [String]()
                    for stringContainer0 in sessionPinningFiltersContainer {
                        sessionPinningFiltersBuffer?.append(stringContainer0)
                    }
                }
                sessionPinningFilters = sessionPinningFiltersBuffer
            } else {
                sessionPinningFilters = []
            }
        } else {
            sessionPinningFilters = nil
        }
        let initQueryDecoded = try containerValues.decodeIfPresent(String.self, forKey: .initQuery)
        initQuery = initQueryDecoded
    }
}