// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ListWebhooksOutputError: Equatable {
    case badRequestException(BadRequestException)
    case internalFailureException(InternalFailureException)
    case limitExceededException(LimitExceededException)
    case unauthorizedException(UnauthorizedException)
    case unknown(UnknownAWSHttpServiceError)
}