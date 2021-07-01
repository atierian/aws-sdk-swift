// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum StopWorkflowRunOutputError: Equatable {
    case entityNotFoundException(EntityNotFoundException)
    case illegalWorkflowStateException(IllegalWorkflowStateException)
    case internalServiceException(InternalServiceException)
    case invalidInputException(InvalidInputException)
    case operationTimeoutException(OperationTimeoutException)
    case unknown(UnknownAWSHttpServiceError)
}