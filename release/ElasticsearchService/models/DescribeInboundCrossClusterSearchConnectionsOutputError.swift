// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeInboundCrossClusterSearchConnectionsOutputError: Equatable {
    case disabledOperationException(DisabledOperationException)
    case invalidPaginationTokenException(InvalidPaginationTokenException)
    case unknown(UnknownAWSHttpServiceError)
}