// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

struct DefaultEndpointResolver : AWSClientRuntime.EndpointResolver {
    func resolve(serviceId: String, region: String) throws -> AWSClientRuntime.AWSEndpoint {
        return try AWSClientRuntime.AWSEndpoint.resolveEndpoint(partitions: servicePartitions, region: region)
    }
}

private let servicePartitions = [
    AWSClientRuntime.Partition(
        id: "aws",
        regionRegex: "^(us|eu|ap|sa|ca|me|af)\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "serverlessrepo.{region}.amazonaws.com",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "ap-east-1": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
            "ap-northeast-1": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
            "ap-northeast-2": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
            "ap-south-1": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
            "ap-southeast-1": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
            "ap-southeast-2": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
            "ca-central-1": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
            "eu-central-1": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
            "eu-north-1": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
            "eu-west-1": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
            "eu-west-2": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
            "eu-west-3": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
            "me-south-1": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
            "sa-east-1": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
            "us-east-1": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
            "us-east-2": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
            "us-west-1": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
            "us-west-2": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-cn",
        regionRegex: "^cn\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "serverlessrepo.{region}.amazonaws.com.cn",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "cn-north-1": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
            "cn-northwest-1": AWSClientRuntime.ServiceEndpointMetadata(
                protocols: ["https"]
            ),
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-iso",
        regionRegex: "^us\\-iso\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "serverlessrepo.{region}.c2s.ic.gov",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-iso-b",
        regionRegex: "^us\\-isob\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "serverlessrepo.{region}.sc2s.sgov.gov",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-us-gov",
        regionRegex: "^us\\-gov\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "serverlessrepo.{region}.amazonaws.com",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "us-gov-east-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "serverlessrepo.us-gov-east-1.amazonaws.com",
                protocols: ["https"],
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-gov-east-1")
            ),
            "us-gov-west-1": AWSClientRuntime.ServiceEndpointMetadata(
                hostName: "serverlessrepo.us-gov-west-1.amazonaws.com",
                protocols: ["https"],
                credentialScope: AWSClientRuntime.CredentialScope(region: "us-gov-west-1")
            ),
        ]
    ),
]