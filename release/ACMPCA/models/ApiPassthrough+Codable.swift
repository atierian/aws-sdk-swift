// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ApiPassthrough: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case extensions = "Extensions"
        case subject = "Subject"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let extensions = extensions {
            try encodeContainer.encode(extensions, forKey: .extensions)
        }
        if let subject = subject {
            try encodeContainer.encode(subject, forKey: .subject)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let extensionsDecoded = try containerValues.decodeIfPresent(Extensions.self, forKey: .extensions)
        extensions = extensionsDecoded
        let subjectDecoded = try containerValues.decodeIfPresent(ASN1Subject.self, forKey: .subject)
        subject = subjectDecoded
    }
}