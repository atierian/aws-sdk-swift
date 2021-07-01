// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateDataSourceOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case conflictException(ConflictException)
    case internalFailureException(InternalFailureException)
    case invalidParameterValueException(InvalidParameterValueException)
    case limitExceededException(LimitExceededException)
    case resourceExistsException(ResourceExistsException)
    case resourceNotFoundException(ResourceNotFoundException)
    case throttlingException(ThrottlingException)
    case unknown(UnknownAWSHttpServiceError)
}