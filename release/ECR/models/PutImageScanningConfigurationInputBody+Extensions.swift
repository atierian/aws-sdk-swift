// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutImageScanningConfigurationInputBody: Equatable {
    public let registryId: String?
    public let repositoryName: String?
    public let imageScanningConfiguration: ImageScanningConfiguration?
}

extension PutImageScanningConfigurationInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case imageScanningConfiguration
        case registryId
        case repositoryName
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let registryIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .registryId)
        registryId = registryIdDecoded
        let repositoryNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .repositoryName)
        repositoryName = repositoryNameDecoded
        let imageScanningConfigurationDecoded = try containerValues.decodeIfPresent(ImageScanningConfiguration.self, forKey: .imageScanningConfiguration)
        imageScanningConfiguration = imageScanningConfigurationDecoded
    }
}