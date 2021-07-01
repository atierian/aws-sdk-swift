// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateAnalyzerOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case conflictException(ConflictException)
    case internalServerException(InternalServerException)
    case serviceQuotaExceededException(ServiceQuotaExceededException)
    case throttlingException(ThrottlingException)
    case validationException(ValidationException)
    case unknown(UnknownAWSHttpServiceError)
}