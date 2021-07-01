// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum GetProductsOutputError: Equatable {
    case expiredNextTokenException(ExpiredNextTokenException)
    case internalErrorException(InternalErrorException)
    case invalidNextTokenException(InvalidNextTokenException)
    case invalidParameterException(InvalidParameterException)
    case notFoundException(NotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}