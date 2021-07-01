// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension AttachLoadBalancerToSubnetsOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestXMLError(httpResponse: httpResponse)
        try self.init(errorType: errorDetails.errorCode, httpResponse: httpResponse, decoder: decoder, message: errorDetails.message, requestID: errorDetails.requestId)
    }
}

extension AttachLoadBalancerToSubnetsOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "AccessPointNotFoundException" : self = .accessPointNotFoundException(try AccessPointNotFoundException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidConfigurationRequestException" : self = .invalidConfigurationRequestException(try InvalidConfigurationRequestException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidSubnetException" : self = .invalidSubnetException(try InvalidSubnetException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "SubnetNotFoundException" : self = .subnetNotFoundException(try SubnetNotFoundException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}