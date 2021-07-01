// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ListResourcesInProtectionGroupOutputError: Equatable {
    case internalErrorException(InternalErrorException)
    case invalidPaginationTokenException(InvalidPaginationTokenException)
    case resourceNotFoundException(ResourceNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}