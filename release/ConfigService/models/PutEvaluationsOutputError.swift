// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum PutEvaluationsOutputError: Equatable {
    case invalidParameterValueException(InvalidParameterValueException)
    case invalidResultTokenException(InvalidResultTokenException)
    case noSuchConfigRuleException(NoSuchConfigRuleException)
    case unknown(UnknownAWSHttpServiceError)
}