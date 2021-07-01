// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum GetTagKeysOutputError: Equatable {
    case internalServiceException(InternalServiceException)
    case invalidParameterException(InvalidParameterException)
    case paginationTokenExpiredException(PaginationTokenExpiredException)
    case throttledException(ThrottledException)
    case unknown(UnknownAWSHttpServiceError)
}