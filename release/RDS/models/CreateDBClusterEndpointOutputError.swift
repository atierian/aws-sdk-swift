// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum CreateDBClusterEndpointOutputError: Equatable {
    case dBClusterEndpointAlreadyExistsFault(DBClusterEndpointAlreadyExistsFault)
    case dBClusterEndpointQuotaExceededFault(DBClusterEndpointQuotaExceededFault)
    case dBClusterNotFoundFault(DBClusterNotFoundFault)
    case dBInstanceNotFoundFault(DBInstanceNotFoundFault)
    case invalidDBClusterStateFault(InvalidDBClusterStateFault)
    case invalidDBInstanceStateFault(InvalidDBInstanceStateFault)
    case unknown(UnknownAWSHttpServiceError)
}