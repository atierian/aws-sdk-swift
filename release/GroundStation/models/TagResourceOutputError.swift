// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum TagResourceOutputError: Equatable {
    case dependencyException(DependencyException)
    case invalidParameterException(InvalidParameterException)
    case resourceNotFoundException(ResourceNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}