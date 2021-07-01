// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateLoadBalancerOutputError: Equatable {
    case certificateNotFoundException(CertificateNotFoundException)
    case duplicateAccessPointNameException(DuplicateAccessPointNameException)
    case duplicateTagKeysException(DuplicateTagKeysException)
    case invalidConfigurationRequestException(InvalidConfigurationRequestException)
    case invalidSchemeException(InvalidSchemeException)
    case invalidSecurityGroupException(InvalidSecurityGroupException)
    case invalidSubnetException(InvalidSubnetException)
    case operationNotPermittedException(OperationNotPermittedException)
    case subnetNotFoundException(SubnetNotFoundException)
    case tooManyAccessPointsException(TooManyAccessPointsException)
    case tooManyTagsException(TooManyTagsException)
    case unsupportedProtocolException(UnsupportedProtocolException)
    case unknown(UnknownAWSHttpServiceError)
}