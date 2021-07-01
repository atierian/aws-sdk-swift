// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension CreateDBInstanceOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestXMLError(httpResponse: httpResponse)
        try self.init(errorType: errorDetails.errorCode, httpResponse: httpResponse, decoder: decoder, message: errorDetails.message, requestID: errorDetails.requestId)
    }
}

extension CreateDBInstanceOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "AuthorizationNotFoundFault" : self = .authorizationNotFoundFault(try AuthorizationNotFoundFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "DBClusterNotFoundFault" : self = .dBClusterNotFoundFault(try DBClusterNotFoundFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "DBInstanceAlreadyExistsFault" : self = .dBInstanceAlreadyExistsFault(try DBInstanceAlreadyExistsFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "DBParameterGroupNotFoundFault" : self = .dBParameterGroupNotFoundFault(try DBParameterGroupNotFoundFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "DBSecurityGroupNotFoundFault" : self = .dBSecurityGroupNotFoundFault(try DBSecurityGroupNotFoundFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "DBSubnetGroupDoesNotCoverEnoughAZs" : self = .dBSubnetGroupDoesNotCoverEnoughAZs(try DBSubnetGroupDoesNotCoverEnoughAZs(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "DBSubnetGroupNotFoundFault" : self = .dBSubnetGroupNotFoundFault(try DBSubnetGroupNotFoundFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "DomainNotFoundFault" : self = .domainNotFoundFault(try DomainNotFoundFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InstanceQuotaExceededFault" : self = .instanceQuotaExceededFault(try InstanceQuotaExceededFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InsufficientDBInstanceCapacityFault" : self = .insufficientDBInstanceCapacityFault(try InsufficientDBInstanceCapacityFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidDBClusterStateFault" : self = .invalidDBClusterStateFault(try InvalidDBClusterStateFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidSubnet" : self = .invalidSubnet(try InvalidSubnet(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidVPCNetworkStateFault" : self = .invalidVPCNetworkStateFault(try InvalidVPCNetworkStateFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "KMSKeyNotAccessibleFault" : self = .kMSKeyNotAccessibleFault(try KMSKeyNotAccessibleFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "OptionGroupNotFoundFault" : self = .optionGroupNotFoundFault(try OptionGroupNotFoundFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ProvisionedIopsNotAvailableInAZFault" : self = .provisionedIopsNotAvailableInAZFault(try ProvisionedIopsNotAvailableInAZFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "StorageQuotaExceededFault" : self = .storageQuotaExceededFault(try StorageQuotaExceededFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "StorageTypeNotSupportedFault" : self = .storageTypeNotSupportedFault(try StorageTypeNotSupportedFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}