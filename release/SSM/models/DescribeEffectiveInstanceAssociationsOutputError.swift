// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeEffectiveInstanceAssociationsOutputError: Equatable {
    case internalServerError(InternalServerError)
    case invalidInstanceId(InvalidInstanceId)
    case invalidNextToken(InvalidNextToken)
    case unknown(UnknownAWSHttpServiceError)
}