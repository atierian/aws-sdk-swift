// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LifecycleRule: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case abortIncompleteMultipartUpload = "AbortIncompleteMultipartUpload"
        case expiration = "Expiration"
        case filter = "Filter"
        case iD = "ID"
        case noncurrentVersionExpiration = "NoncurrentVersionExpiration"
        case noncurrentVersionTransitions = "NoncurrentVersionTransitions"
        case status = "Status"
        case transitions = "Transitions"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://awss3control.amazonaws.com/doc/2018-08-20/", forKey: Key("xmlns"))
        }
        if let abortIncompleteMultipartUpload = abortIncompleteMultipartUpload {
            try container.encode(abortIncompleteMultipartUpload, forKey: Key("abortIncompleteMultipartUpload"))
        }
        if let expiration = expiration {
            try container.encode(expiration, forKey: Key("expiration"))
        }
        if let filter = filter {
            try container.encode(filter, forKey: Key("filter"))
        }
        if let iD = iD {
            try container.encode(iD, forKey: Key("iD"))
        }
        if let noncurrentVersionExpiration = noncurrentVersionExpiration {
            try container.encode(noncurrentVersionExpiration, forKey: Key("noncurrentVersionExpiration"))
        }
        if let noncurrentVersionTransitions = noncurrentVersionTransitions {
            var noncurrentVersionTransitionsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("noncurrentVersionTransitions"))
            for noncurrentversiontransition0 in noncurrentVersionTransitions {
                try noncurrentVersionTransitionsContainer.encode(noncurrentversiontransition0, forKey: Key("NoncurrentVersionTransition"))
            }
        }
        if let status = status {
            try container.encode(status, forKey: Key("status"))
        }
        if let transitions = transitions {
            var transitionsContainer = container.nestedContainer(keyedBy: Key.self, forKey: Key("transitions"))
            for transition0 in transitions {
                try transitionsContainer.encode(transition0, forKey: Key("Transition"))
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let expirationDecoded = try containerValues.decodeIfPresent(LifecycleExpiration.self, forKey: .expiration)
        expiration = expirationDecoded
        let iDDecoded = try containerValues.decodeIfPresent(String.self, forKey: .iD)
        iD = iDDecoded
        let filterDecoded = try containerValues.decodeIfPresent(LifecycleRuleFilter.self, forKey: .filter)
        filter = filterDecoded
        let statusDecoded = try containerValues.decodeIfPresent(ExpirationStatus.self, forKey: .status)
        status = statusDecoded
        if containerValues.contains(.transitions) {
            struct KeyVal0{struct Transition{}}
            let transitionsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.Transition>.CodingKeys.self, forKey: .transitions)
            if let transitionsWrappedContainer = transitionsWrappedContainer {
                let transitionsContainer = try transitionsWrappedContainer.decodeIfPresent([Transition].self, forKey: .member)
                var transitionsBuffer:[Transition]? = nil
                if let transitionsContainer = transitionsContainer {
                    transitionsBuffer = [Transition]()
                    for structureContainer0 in transitionsContainer {
                        transitionsBuffer?.append(structureContainer0)
                    }
                }
                transitions = transitionsBuffer
            } else {
                transitions = []
            }
        } else {
            transitions = nil
        }
        if containerValues.contains(.noncurrentVersionTransitions) {
            struct KeyVal0{struct NoncurrentVersionTransition{}}
            let noncurrentVersionTransitionsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.NoncurrentVersionTransition>.CodingKeys.self, forKey: .noncurrentVersionTransitions)
            if let noncurrentVersionTransitionsWrappedContainer = noncurrentVersionTransitionsWrappedContainer {
                let noncurrentVersionTransitionsContainer = try noncurrentVersionTransitionsWrappedContainer.decodeIfPresent([NoncurrentVersionTransition].self, forKey: .member)
                var noncurrentVersionTransitionsBuffer:[NoncurrentVersionTransition]? = nil
                if let noncurrentVersionTransitionsContainer = noncurrentVersionTransitionsContainer {
                    noncurrentVersionTransitionsBuffer = [NoncurrentVersionTransition]()
                    for structureContainer0 in noncurrentVersionTransitionsContainer {
                        noncurrentVersionTransitionsBuffer?.append(structureContainer0)
                    }
                }
                noncurrentVersionTransitions = noncurrentVersionTransitionsBuffer
            } else {
                noncurrentVersionTransitions = []
            }
        } else {
            noncurrentVersionTransitions = nil
        }
        let noncurrentVersionExpirationDecoded = try containerValues.decodeIfPresent(NoncurrentVersionExpiration.self, forKey: .noncurrentVersionExpiration)
        noncurrentVersionExpiration = noncurrentVersionExpirationDecoded
        let abortIncompleteMultipartUploadDecoded = try containerValues.decodeIfPresent(AbortIncompleteMultipartUpload.self, forKey: .abortIncompleteMultipartUpload)
        abortIncompleteMultipartUpload = abortIncompleteMultipartUploadDecoded
    }
}