// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateEventSubscriptionOutputError: Equatable {
    case eventSubscriptionQuotaExceededFault(EventSubscriptionQuotaExceededFault)
    case sNSInvalidTopicFault(SNSInvalidTopicFault)
    case sNSNoAuthorizationFault(SNSNoAuthorizationFault)
    case sNSTopicArnNotFoundFault(SNSTopicArnNotFoundFault)
    case sourceNotFoundFault(SourceNotFoundFault)
    case subscriptionAlreadyExistFault(SubscriptionAlreadyExistFault)
    case subscriptionCategoryNotFoundFault(SubscriptionCategoryNotFoundFault)
    case unknown(UnknownAWSHttpServiceError)
}