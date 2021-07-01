// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The inventory item size has exceeded the size limit.</p>
public struct ItemSizeLimitExceededException: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    public var message: String?
    public var typeName: String?

    public init (
        message: String? = nil,
        typeName: String? = nil
    )
    {
        self.message = message
        self.typeName = typeName
    }
}

extension ItemSizeLimitExceededException: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ItemSizeLimitExceededException(message: \(String(describing: message)), typeName: \(String(describing: typeName)))"}
}