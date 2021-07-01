// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ListFargateProfilesOutputError: Equatable {
    case clientException(ClientException)
    case invalidParameterException(InvalidParameterException)
    case resourceNotFoundException(ResourceNotFoundException)
    case serverException(ServerException)
    case unknown(UnknownAWSHttpServiceError)
}