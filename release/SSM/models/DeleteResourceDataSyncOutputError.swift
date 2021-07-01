// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DeleteResourceDataSyncOutputError: Equatable {
    case internalServerError(InternalServerError)
    case resourceDataSyncInvalidConfigurationException(ResourceDataSyncInvalidConfigurationException)
    case resourceDataSyncNotFoundException(ResourceDataSyncNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}