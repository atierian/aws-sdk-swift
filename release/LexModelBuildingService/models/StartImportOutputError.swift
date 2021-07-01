// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum StartImportOutputError: Equatable {
    case badRequestException(BadRequestException)
    case internalFailureException(InternalFailureException)
    case limitExceededException(LimitExceededException)
    case unknown(UnknownAWSHttpServiceError)
}