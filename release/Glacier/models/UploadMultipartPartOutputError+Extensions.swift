// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension UploadMultipartPartOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension UploadMultipartPartOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "InvalidParameterValueException" : self = .invalidParameterValueException(try InvalidParameterValueException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "MissingParameterValueException" : self = .missingParameterValueException(try MissingParameterValueException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "RequestTimeoutException" : self = .requestTimeoutException(try RequestTimeoutException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ResourceNotFoundException" : self = .resourceNotFoundException(try ResourceNotFoundException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ServiceUnavailableException" : self = .serviceUnavailableException(try ServiceUnavailableException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}