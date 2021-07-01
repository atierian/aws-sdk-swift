// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum EnableLoggingOutputError: Equatable {
    case bucketNotFoundFault(BucketNotFoundFault)
    case clusterNotFoundFault(ClusterNotFoundFault)
    case insufficientS3BucketPolicyFault(InsufficientS3BucketPolicyFault)
    case invalidClusterStateFault(InvalidClusterStateFault)
    case invalidS3BucketNameFault(InvalidS3BucketNameFault)
    case invalidS3KeyPrefixFault(InvalidS3KeyPrefixFault)
    case unknown(UnknownAWSHttpServiceError)
}