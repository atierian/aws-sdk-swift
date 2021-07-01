// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateNotificationRuleOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case concurrentModificationException(ConcurrentModificationException)
    case configurationException(ConfigurationException)
    case limitExceededException(LimitExceededException)
    case resourceAlreadyExistsException(ResourceAlreadyExistsException)
    case validationException(ValidationException)
    case unknown(UnknownAWSHttpServiceError)
}