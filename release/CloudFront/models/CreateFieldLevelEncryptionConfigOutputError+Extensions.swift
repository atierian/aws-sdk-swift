// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension CreateFieldLevelEncryptionConfigOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestXMLError(httpResponse: httpResponse)
        try self.init(errorType: errorDetails.errorCode, httpResponse: httpResponse, decoder: decoder, message: errorDetails.message, requestID: errorDetails.requestId)
    }
}

extension CreateFieldLevelEncryptionConfigOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "FieldLevelEncryptionConfigAlreadyExists" : self = .fieldLevelEncryptionConfigAlreadyExists(try FieldLevelEncryptionConfigAlreadyExists(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InconsistentQuantities" : self = .inconsistentQuantities(try InconsistentQuantities(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidArgument" : self = .invalidArgument(try InvalidArgument(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "NoSuchFieldLevelEncryptionProfile" : self = .noSuchFieldLevelEncryptionProfile(try NoSuchFieldLevelEncryptionProfile(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "QueryArgProfileEmpty" : self = .queryArgProfileEmpty(try QueryArgProfileEmpty(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "TooManyFieldLevelEncryptionConfigs" : self = .tooManyFieldLevelEncryptionConfigs(try TooManyFieldLevelEncryptionConfigs(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "TooManyFieldLevelEncryptionContentTypeProfiles" : self = .tooManyFieldLevelEncryptionContentTypeProfiles(try TooManyFieldLevelEncryptionContentTypeProfiles(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "TooManyFieldLevelEncryptionQueryArgProfiles" : self = .tooManyFieldLevelEncryptionQueryArgProfiles(try TooManyFieldLevelEncryptionQueryArgProfiles(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}