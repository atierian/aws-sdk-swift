// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ImportAssetFromSignedUrlResponseDetails: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case assetName = "AssetName"
        case dataSetId = "DataSetId"
        case md5Hash = "Md5Hash"
        case revisionId = "RevisionId"
        case signedUrl = "SignedUrl"
        case signedUrlExpiresAt = "SignedUrlExpiresAt"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let assetName = assetName {
            try encodeContainer.encode(assetName, forKey: .assetName)
        }
        if let dataSetId = dataSetId {
            try encodeContainer.encode(dataSetId, forKey: .dataSetId)
        }
        if let md5Hash = md5Hash {
            try encodeContainer.encode(md5Hash, forKey: .md5Hash)
        }
        if let revisionId = revisionId {
            try encodeContainer.encode(revisionId, forKey: .revisionId)
        }
        if let signedUrl = signedUrl {
            try encodeContainer.encode(signedUrl, forKey: .signedUrl)
        }
        if let signedUrlExpiresAt = signedUrlExpiresAt {
            try encodeContainer.encode(signedUrlExpiresAt.timeIntervalSince1970, forKey: .signedUrlExpiresAt)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let assetNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .assetName)
        assetName = assetNameDecoded
        let dataSetIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .dataSetId)
        dataSetId = dataSetIdDecoded
        let md5HashDecoded = try containerValues.decodeIfPresent(String.self, forKey: .md5Hash)
        md5Hash = md5HashDecoded
        let revisionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .revisionId)
        revisionId = revisionIdDecoded
        let signedUrlDecoded = try containerValues.decodeIfPresent(String.self, forKey: .signedUrl)
        signedUrl = signedUrlDecoded
        let signedUrlExpiresAtDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .signedUrlExpiresAt)
        signedUrlExpiresAt = signedUrlExpiresAtDecoded
    }
}