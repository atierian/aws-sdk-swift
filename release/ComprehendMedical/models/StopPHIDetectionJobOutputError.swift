// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum StopPHIDetectionJobOutputError: Equatable {
    case internalServerException(InternalServerException)
    case invalidRequestException(InvalidRequestException)
    case resourceNotFoundException(ResourceNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}