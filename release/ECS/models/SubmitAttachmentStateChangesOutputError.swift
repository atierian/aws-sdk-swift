// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum SubmitAttachmentStateChangesOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case clientException(ClientException)
    case invalidParameterException(InvalidParameterException)
    case serverException(ServerException)
    case unknown(UnknownAWSHttpServiceError)
}