// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ListHostedZonesByNameOutputError: Equatable {
    case invalidDomainName(InvalidDomainName)
    case invalidInput(InvalidInput)
    case unknown(UnknownAWSHttpServiceError)
}