// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeInputDeviceOutputError: Equatable {
    case badGatewayException(BadGatewayException)
    case badRequestException(BadRequestException)
    case forbiddenException(ForbiddenException)
    case gatewayTimeoutException(GatewayTimeoutException)
    case internalServerErrorException(InternalServerErrorException)
    case notFoundException(NotFoundException)
    case tooManyRequestsException(TooManyRequestsException)
    case unknown(UnknownAWSHttpServiceError)
}