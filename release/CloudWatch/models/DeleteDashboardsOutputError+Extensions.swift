// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension DeleteDashboardsOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestXMLError(httpResponse: httpResponse)
        try self.init(errorType: errorDetails.errorCode, httpResponse: httpResponse, decoder: decoder, message: errorDetails.message, requestID: errorDetails.requestId)
    }
}

extension DeleteDashboardsOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "DashboardNotFoundError" : self = .dashboardNotFoundError(try DashboardNotFoundError(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InternalServiceFault" : self = .internalServiceFault(try InternalServiceFault(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidParameterValueException" : self = .invalidParameterValueException(try InvalidParameterValueException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}