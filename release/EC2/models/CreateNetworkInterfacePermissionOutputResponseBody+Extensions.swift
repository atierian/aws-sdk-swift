// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateNetworkInterfacePermissionOutputResponseBody: Equatable {
    public let interfacePermission: NetworkInterfacePermission?
}

extension CreateNetworkInterfacePermissionOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case interfacePermission = "interfacePermission"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let interfacePermissionDecoded = try containerValues.decodeIfPresent(NetworkInterfacePermission.self, forKey: .interfacePermission)
        interfacePermission = interfacePermissionDecoded
    }
}