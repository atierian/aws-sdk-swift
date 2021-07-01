// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateParameterGroupOutputError: Equatable {
    case invalidParameterCombinationException(InvalidParameterCombinationException)
    case invalidParameterGroupStateFault(InvalidParameterGroupStateFault)
    case invalidParameterValueException(InvalidParameterValueException)
    case parameterGroupAlreadyExistsFault(ParameterGroupAlreadyExistsFault)
    case parameterGroupQuotaExceededFault(ParameterGroupQuotaExceededFault)
    case serviceLinkedRoleNotFoundFault(ServiceLinkedRoleNotFoundFault)
    case unknown(UnknownAWSHttpServiceError)
}