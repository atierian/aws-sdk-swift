// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeAssociationOutputError: Equatable {
    case associationDoesNotExist(AssociationDoesNotExist)
    case internalServerError(InternalServerError)
    case invalidAssociationVersion(InvalidAssociationVersion)
    case invalidDocument(InvalidDocument)
    case invalidInstanceId(InvalidInstanceId)
    case unknown(UnknownAWSHttpServiceError)
}