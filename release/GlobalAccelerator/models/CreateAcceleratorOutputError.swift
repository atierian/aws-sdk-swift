// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateAcceleratorOutputError: Equatable {
    case internalServiceErrorException(InternalServiceErrorException)
    case invalidArgumentException(InvalidArgumentException)
    case limitExceededException(LimitExceededException)
    case unknown(UnknownAWSHttpServiceError)
}