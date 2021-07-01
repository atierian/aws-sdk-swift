// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateStorageLocationOutputError: Equatable {
    case insufficientPrivilegesException(InsufficientPrivilegesException)
    case s3SubscriptionRequiredException(S3SubscriptionRequiredException)
    case tooManyBucketsException(TooManyBucketsException)
    case unknown(UnknownAWSHttpServiceError)
}