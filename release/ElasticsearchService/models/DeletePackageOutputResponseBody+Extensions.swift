// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeletePackageOutputResponseBody: Equatable {
    public let packageDetails: PackageDetails?
}

extension DeletePackageOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case packageDetails = "PackageDetails"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let packageDetailsDecoded = try containerValues.decodeIfPresent(PackageDetails.self, forKey: .packageDetails)
        packageDetails = packageDetailsDecoded
    }
}