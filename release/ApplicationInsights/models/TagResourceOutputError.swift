// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum TagResourceOutputError: Equatable {
    case resourceNotFoundException(ResourceNotFoundException)
    case tooManyTagsException(TooManyTagsException)
    case validationException(ValidationException)
    case unknown(UnknownAWSHttpServiceError)
}