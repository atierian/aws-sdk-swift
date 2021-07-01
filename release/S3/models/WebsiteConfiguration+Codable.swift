// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension WebsiteConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case errorDocument = "ErrorDocument"
        case indexDocument = "IndexDocument"
        case redirectAllRequestsTo = "RedirectAllRequestsTo"
        case routingRules = "RoutingRules"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: Key("xmlns"))
        }
        if let errorDocument = errorDocument {
            try container.encode(errorDocument, forKey: Key("errorDocument"))
        }
        if let indexDocument = indexDocument {
            try container.encode(indexDocument, forKey: Key("indexDocument"))
        }
        if let redirectAllRequestsTo = redirectAllRequestsTo {
            try container.encode(redirectAllRequestsTo, forKey: Key("redirectAllRequestsTo"))
        }
        if let routingRules = routingRules {
            var routingRulesContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("routingRules"))
            for routingrule0 in routingRules {
                try routingRulesContainer.encode(routingrule0, forKey: Key("RoutingRule"))
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let errorDocumentDecoded = try containerValues.decodeIfPresent(ErrorDocument.self, forKey: .errorDocument)
        errorDocument = errorDocumentDecoded
        let indexDocumentDecoded = try containerValues.decodeIfPresent(IndexDocument.self, forKey: .indexDocument)
        indexDocument = indexDocumentDecoded
        let redirectAllRequestsToDecoded = try containerValues.decodeIfPresent(RedirectAllRequestsTo.self, forKey: .redirectAllRequestsTo)
        redirectAllRequestsTo = redirectAllRequestsToDecoded
        if containerValues.contains(.routingRules) {
            struct KeyVal0{struct RoutingRule{}}
            let routingRulesWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.RoutingRule>.CodingKeys.self, forKey: .routingRules)
            if let routingRulesWrappedContainer = routingRulesWrappedContainer {
                let routingRulesContainer = try routingRulesWrappedContainer.decodeIfPresent([RoutingRule].self, forKey: .member)
                var routingRulesBuffer:[RoutingRule]? = nil
                if let routingRulesContainer = routingRulesContainer {
                    routingRulesBuffer = [RoutingRule]()
                    for structureContainer0 in routingRulesContainer {
                        routingRulesBuffer?.append(structureContainer0)
                    }
                }
                routingRules = routingRulesBuffer
            } else {
                routingRules = []
            }
        } else {
            routingRules = nil
        }
    }
}