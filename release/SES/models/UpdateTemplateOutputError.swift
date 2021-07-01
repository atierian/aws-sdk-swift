// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum UpdateTemplateOutputError: Equatable {
    case invalidTemplateException(InvalidTemplateException)
    case templateDoesNotExistException(TemplateDoesNotExistException)
    case unknown(UnknownAWSHttpServiceError)
}