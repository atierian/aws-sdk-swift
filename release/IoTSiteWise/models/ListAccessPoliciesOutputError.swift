// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ListAccessPoliciesOutputError: Equatable {
    case internalFailureException(InternalFailureException)
    case invalidRequestException(InvalidRequestException)
    case throttlingException(ThrottlingException)
    case unknown(UnknownAWSHttpServiceError)
}