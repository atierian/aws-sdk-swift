// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreatePrivateVirtualInterfaceInputBody: Equatable {
    public let connectionId: String?
    public let newPrivateVirtualInterface: NewPrivateVirtualInterface?
}

extension CreatePrivateVirtualInterfaceInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case connectionId
        case newPrivateVirtualInterface
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let connectionIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .connectionId)
        connectionId = connectionIdDecoded
        let newPrivateVirtualInterfaceDecoded = try containerValues.decodeIfPresent(NewPrivateVirtualInterface.self, forKey: .newPrivateVirtualInterface)
        newPrivateVirtualInterface = newPrivateVirtualInterfaceDecoded
    }
}