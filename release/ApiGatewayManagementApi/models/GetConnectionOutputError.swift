// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum GetConnectionOutputError: Equatable {
    case forbiddenException(ForbiddenException)
    case goneException(GoneException)
    case limitExceededException(LimitExceededException)
    case unknown(UnknownAWSHttpServiceError)
}