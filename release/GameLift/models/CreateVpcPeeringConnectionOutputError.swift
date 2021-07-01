// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateVpcPeeringConnectionOutputError: Equatable {
    case internalServiceException(InternalServiceException)
    case invalidRequestException(InvalidRequestException)
    case notFoundException(NotFoundException)
    case unauthorizedException(UnauthorizedException)
    case unknown(UnknownAWSHttpServiceError)
}