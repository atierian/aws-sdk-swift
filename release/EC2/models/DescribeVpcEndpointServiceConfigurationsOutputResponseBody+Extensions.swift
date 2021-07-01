// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeVpcEndpointServiceConfigurationsOutputResponseBody: Equatable {
    public let serviceConfigurations: [ServiceConfiguration]?
    public let nextToken: String?
}

extension DescribeVpcEndpointServiceConfigurationsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "nextToken"
        case serviceConfigurations = "serviceConfigurationSet"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        if containerValues.contains(.serviceConfigurations) {
            struct KeyVal0{struct item{}}
            let serviceConfigurationsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .serviceConfigurations)
            if let serviceConfigurationsWrappedContainer = serviceConfigurationsWrappedContainer {
                let serviceConfigurationsContainer = try serviceConfigurationsWrappedContainer.decodeIfPresent([ServiceConfiguration].self, forKey: .member)
                var serviceConfigurationsBuffer:[ServiceConfiguration]? = nil
                if let serviceConfigurationsContainer = serviceConfigurationsContainer {
                    serviceConfigurationsBuffer = [ServiceConfiguration]()
                    for structureContainer0 in serviceConfigurationsContainer {
                        serviceConfigurationsBuffer?.append(structureContainer0)
                    }
                }
                serviceConfigurations = serviceConfigurationsBuffer
            } else {
                serviceConfigurations = []
            }
        } else {
            serviceConfigurations = nil
        }
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}