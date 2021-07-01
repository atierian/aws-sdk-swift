// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum UnlabelParameterVersionOutputError: Equatable {
    case internalServerError(InternalServerError)
    case parameterNotFound(ParameterNotFound)
    case parameterVersionNotFound(ParameterVersionNotFound)
    case tooManyUpdates(TooManyUpdates)
    case unknown(UnknownAWSHttpServiceError)
}