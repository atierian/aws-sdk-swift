// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CheckoutLicenseOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case authorizationException(AuthorizationException)
    case noEntitlementsAllowedException(NoEntitlementsAllowedException)
    case rateLimitExceededException(RateLimitExceededException)
    case redirectException(RedirectException)
    case resourceNotFoundException(ResourceNotFoundException)
    case serverInternalException(ServerInternalException)
    case unsupportedDigitalSignatureMethodException(UnsupportedDigitalSignatureMethodException)
    case validationException(ValidationException)
    case unknown(UnknownAWSHttpServiceError)
}