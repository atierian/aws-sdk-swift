// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum GetInventorySchemaOutputError: Equatable {
    case internalServerError(InternalServerError)
    case invalidNextToken(InvalidNextToken)
    case invalidTypeNameException(InvalidTypeNameException)
    case unknown(UnknownAWSHttpServiceError)
}