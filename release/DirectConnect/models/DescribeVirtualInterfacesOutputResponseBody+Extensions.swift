// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeVirtualInterfacesOutputResponseBody: Equatable {
    public let virtualInterfaces: [VirtualInterface]?
}

extension DescribeVirtualInterfacesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case virtualInterfaces
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let virtualInterfacesContainer = try containerValues.decodeIfPresent([VirtualInterface?].self, forKey: .virtualInterfaces)
        var virtualInterfacesDecoded0:[VirtualInterface]? = nil
        if let virtualInterfacesContainer = virtualInterfacesContainer {
            virtualInterfacesDecoded0 = [VirtualInterface]()
            for structure0 in virtualInterfacesContainer {
                if let structure0 = structure0 {
                    virtualInterfacesDecoded0?.append(structure0)
                }
            }
        }
        virtualInterfaces = virtualInterfacesDecoded0
    }
}