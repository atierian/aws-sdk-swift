// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DeleteGroupOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case internalFailureException(InternalFailureException)
    case invalidParameterValueException(InvalidParameterValueException)
    case preconditionNotMetException(PreconditionNotMetException)
    case resourceNotFoundException(ResourceNotFoundException)
    case resourceUnavailableException(ResourceUnavailableException)
    case throttlingException(ThrottlingException)
    case unknown(UnknownAWSHttpServiceError)
}