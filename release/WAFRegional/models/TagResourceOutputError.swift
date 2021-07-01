// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum TagResourceOutputError: Equatable {
    case wAFBadRequestException(WAFBadRequestException)
    case wAFInternalErrorException(WAFInternalErrorException)
    case wAFInvalidParameterException(WAFInvalidParameterException)
    case wAFLimitsExceededException(WAFLimitsExceededException)
    case wAFNonexistentItemException(WAFNonexistentItemException)
    case wAFTagOperationException(WAFTagOperationException)
    case wAFTagOperationInternalErrorException(WAFTagOperationInternalErrorException)
    case unknown(UnknownAWSHttpServiceError)
}