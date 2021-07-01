// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum RotateEncryptionKeyOutputError: Equatable {
    case clusterNotFoundFault(ClusterNotFoundFault)
    case dependentServiceRequestThrottlingFault(DependentServiceRequestThrottlingFault)
    case invalidClusterStateFault(InvalidClusterStateFault)
    case unknown(UnknownAWSHttpServiceError)
}