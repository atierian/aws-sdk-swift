// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum VerifySoftwareTokenOutputError: Equatable {
    case codeMismatchException(CodeMismatchException)
    case enableSoftwareTokenMFAException(EnableSoftwareTokenMFAException)
    case internalErrorException(InternalErrorException)
    case invalidParameterException(InvalidParameterException)
    case invalidUserPoolConfigurationException(InvalidUserPoolConfigurationException)
    case notAuthorizedException(NotAuthorizedException)
    case passwordResetRequiredException(PasswordResetRequiredException)
    case resourceNotFoundException(ResourceNotFoundException)
    case softwareTokenMFANotFoundException(SoftwareTokenMFANotFoundException)
    case tooManyRequestsException(TooManyRequestsException)
    case userNotConfirmedException(UserNotConfirmedException)
    case userNotFoundException(UserNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}