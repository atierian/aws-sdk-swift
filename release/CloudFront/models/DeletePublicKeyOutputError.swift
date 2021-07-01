// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DeletePublicKeyOutputError: Equatable {
    case accessDenied(AccessDenied)
    case invalidIfMatchVersion(InvalidIfMatchVersion)
    case noSuchPublicKey(NoSuchPublicKey)
    case preconditionFailed(PreconditionFailed)
    case publicKeyInUse(PublicKeyInUse)
    case unknown(UnknownAWSHttpServiceError)
}