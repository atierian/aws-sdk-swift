// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum RemoveSourceIdentifierFromSubscriptionOutputError: Equatable {
    case sourceNotFoundFault(SourceNotFoundFault)
    case subscriptionNotFoundFault(SubscriptionNotFoundFault)
    case unknown(UnknownAWSHttpServiceError)
}