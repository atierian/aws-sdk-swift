// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateOrUpdateTagsOutputError: Equatable {
    case alreadyExistsFault(AlreadyExistsFault)
    case limitExceededFault(LimitExceededFault)
    case resourceContentionFault(ResourceContentionFault)
    case resourceInUseFault(ResourceInUseFault)
    case unknown(UnknownAWSHttpServiceError)
}