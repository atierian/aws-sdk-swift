// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ExecuteSqlOutputError: Equatable {
    case badRequestException(BadRequestException)
    case forbiddenException(ForbiddenException)
    case internalServerErrorException(InternalServerErrorException)
    case serviceUnavailableError(ServiceUnavailableError)
    case unknown(UnknownAWSHttpServiceError)
}