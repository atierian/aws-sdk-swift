// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum BatchRevokePermissionsOutputError: Equatable {
    case invalidInputException(InvalidInputException)
    case operationTimeoutException(OperationTimeoutException)
    case unknown(UnknownAWSHttpServiceError)
}