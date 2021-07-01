// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension EFSVolumeConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case authorizationConfig
        case fileSystemId
        case rootDirectory
        case transitEncryption
        case transitEncryptionPort
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let authorizationConfig = authorizationConfig {
            try encodeContainer.encode(authorizationConfig, forKey: .authorizationConfig)
        }
        if let fileSystemId = fileSystemId {
            try encodeContainer.encode(fileSystemId, forKey: .fileSystemId)
        }
        if let rootDirectory = rootDirectory {
            try encodeContainer.encode(rootDirectory, forKey: .rootDirectory)
        }
        if let transitEncryption = transitEncryption {
            try encodeContainer.encode(transitEncryption.rawValue, forKey: .transitEncryption)
        }
        if transitEncryptionPort != 0 {
            try encodeContainer.encode(transitEncryptionPort, forKey: .transitEncryptionPort)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let fileSystemIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .fileSystemId)
        fileSystemId = fileSystemIdDecoded
        let rootDirectoryDecoded = try containerValues.decodeIfPresent(String.self, forKey: .rootDirectory)
        rootDirectory = rootDirectoryDecoded
        let transitEncryptionDecoded = try containerValues.decodeIfPresent(EFSTransitEncryption.self, forKey: .transitEncryption)
        transitEncryption = transitEncryptionDecoded
        let transitEncryptionPortDecoded = try containerValues.decode(Int.self, forKey: .transitEncryptionPort)
        transitEncryptionPort = transitEncryptionPortDecoded
        let authorizationConfigDecoded = try containerValues.decodeIfPresent(EFSAuthorizationConfig.self, forKey: .authorizationConfig)
        authorizationConfig = authorizationConfigDecoded
    }
}