// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeConfigRulesOutputError: Equatable {
    case invalidNextTokenException(InvalidNextTokenException)
    case noSuchConfigRuleException(NoSuchConfigRuleException)
    case unknown(UnknownAWSHttpServiceError)
}