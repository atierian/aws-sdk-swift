// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeEventSubscriptionsOutputError: Equatable {
    case invalidTagFault(InvalidTagFault)
    case subscriptionNotFoundFault(SubscriptionNotFoundFault)
    case unknown(UnknownAWSHttpServiceError)
}