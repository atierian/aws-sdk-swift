// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension UpdateTrailOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension UpdateTrailOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "CloudTrailAccessNotEnabledException" : self = .cloudTrailAccessNotEnabledException(try CloudTrailAccessNotEnabledException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "CloudTrailInvalidClientTokenIdException" : self = .cloudTrailInvalidClientTokenIdException(try CloudTrailInvalidClientTokenIdException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "CloudWatchLogsDeliveryUnavailableException" : self = .cloudWatchLogsDeliveryUnavailableException(try CloudWatchLogsDeliveryUnavailableException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InsufficientDependencyServiceAccessPermissionException" : self = .insufficientDependencyServiceAccessPermissionException(try InsufficientDependencyServiceAccessPermissionException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InsufficientEncryptionPolicyException" : self = .insufficientEncryptionPolicyException(try InsufficientEncryptionPolicyException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InsufficientS3BucketPolicyException" : self = .insufficientS3BucketPolicyException(try InsufficientS3BucketPolicyException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InsufficientSnsTopicPolicyException" : self = .insufficientSnsTopicPolicyException(try InsufficientSnsTopicPolicyException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidCloudWatchLogsLogGroupArnException" : self = .invalidCloudWatchLogsLogGroupArnException(try InvalidCloudWatchLogsLogGroupArnException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidCloudWatchLogsRoleArnException" : self = .invalidCloudWatchLogsRoleArnException(try InvalidCloudWatchLogsRoleArnException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidEventSelectorsException" : self = .invalidEventSelectorsException(try InvalidEventSelectorsException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidHomeRegionException" : self = .invalidHomeRegionException(try InvalidHomeRegionException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidKmsKeyIdException" : self = .invalidKmsKeyIdException(try InvalidKmsKeyIdException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidParameterCombinationException" : self = .invalidParameterCombinationException(try InvalidParameterCombinationException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidS3BucketNameException" : self = .invalidS3BucketNameException(try InvalidS3BucketNameException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidS3PrefixException" : self = .invalidS3PrefixException(try InvalidS3PrefixException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidSnsTopicNameException" : self = .invalidSnsTopicNameException(try InvalidSnsTopicNameException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidTrailNameException" : self = .invalidTrailNameException(try InvalidTrailNameException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "KmsException" : self = .kmsException(try KmsException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "KmsKeyDisabledException" : self = .kmsKeyDisabledException(try KmsKeyDisabledException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "KmsKeyNotFoundException" : self = .kmsKeyNotFoundException(try KmsKeyNotFoundException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "NotOrganizationMasterAccountException" : self = .notOrganizationMasterAccountException(try NotOrganizationMasterAccountException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "OperationNotPermittedException" : self = .operationNotPermittedException(try OperationNotPermittedException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "OrganizationNotInAllFeaturesModeException" : self = .organizationNotInAllFeaturesModeException(try OrganizationNotInAllFeaturesModeException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "OrganizationsNotInUseException" : self = .organizationsNotInUseException(try OrganizationsNotInUseException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "S3BucketDoesNotExistException" : self = .s3BucketDoesNotExistException(try S3BucketDoesNotExistException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "TrailNotFoundException" : self = .trailNotFoundException(try TrailNotFoundException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "TrailNotProvidedException" : self = .trailNotProvidedException(try TrailNotProvidedException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "UnsupportedOperationException" : self = .unsupportedOperationException(try UnsupportedOperationException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}