// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DeleteUserGroupOutputError: Equatable {
    case invalidParameterValueException(InvalidParameterValueException)
    case invalidUserGroupStateFault(InvalidUserGroupStateFault)
    case userGroupNotFoundFault(UserGroupNotFoundFault)
    case unknown(UnknownAWSHttpServiceError)
}