// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeNotificationSubscriptionsOutputError: Equatable {
    case entityNotExistsException(EntityNotExistsException)
    case serviceUnavailableException(ServiceUnavailableException)
    case unauthorizedResourceAccessException(UnauthorizedResourceAccessException)
    case unknown(UnknownAWSHttpServiceError)
}