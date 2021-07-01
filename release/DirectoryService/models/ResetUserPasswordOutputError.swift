// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ResetUserPasswordOutputError: Equatable {
    case clientException(ClientException)
    case directoryUnavailableException(DirectoryUnavailableException)
    case entityDoesNotExistException(EntityDoesNotExistException)
    case invalidPasswordException(InvalidPasswordException)
    case serviceException(ServiceException)
    case unsupportedOperationException(UnsupportedOperationException)
    case userDoesNotExistException(UserDoesNotExistException)
    case unknown(UnknownAWSHttpServiceError)
}