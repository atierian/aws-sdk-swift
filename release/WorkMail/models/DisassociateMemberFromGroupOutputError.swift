// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DisassociateMemberFromGroupOutputError: Equatable {
    case directoryServiceAuthenticationFailedException(DirectoryServiceAuthenticationFailedException)
    case directoryUnavailableException(DirectoryUnavailableException)
    case entityNotFoundException(EntityNotFoundException)
    case entityStateException(EntityStateException)
    case invalidParameterException(InvalidParameterException)
    case organizationNotFoundException(OrganizationNotFoundException)
    case organizationStateException(OrganizationStateException)
    case unsupportedOperationException(UnsupportedOperationException)
    case unknown(UnknownAWSHttpServiceError)
}