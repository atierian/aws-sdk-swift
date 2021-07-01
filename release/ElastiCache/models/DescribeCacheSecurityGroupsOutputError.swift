// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeCacheSecurityGroupsOutputError: Equatable {
    case cacheSecurityGroupNotFoundFault(CacheSecurityGroupNotFoundFault)
    case invalidParameterCombinationException(InvalidParameterCombinationException)
    case invalidParameterValueException(InvalidParameterValueException)
    case unknown(UnknownAWSHttpServiceError)
}