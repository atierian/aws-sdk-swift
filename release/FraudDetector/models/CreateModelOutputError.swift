// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateModelOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case internalServerException(InternalServerException)
    case validationException(ValidationException)
    case unknown(UnknownAWSHttpServiceError)
}