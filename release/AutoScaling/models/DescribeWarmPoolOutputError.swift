// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeWarmPoolOutputError: Equatable {
    case invalidNextToken(InvalidNextToken)
    case limitExceededFault(LimitExceededFault)
    case resourceContentionFault(ResourceContentionFault)
    case unknown(UnknownAWSHttpServiceError)
}