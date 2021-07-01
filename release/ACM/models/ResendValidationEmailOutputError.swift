// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ResendValidationEmailOutputError: Equatable {
    case invalidArnException(InvalidArnException)
    case invalidDomainValidationOptionsException(InvalidDomainValidationOptionsException)
    case invalidStateException(InvalidStateException)
    case resourceNotFoundException(ResourceNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}