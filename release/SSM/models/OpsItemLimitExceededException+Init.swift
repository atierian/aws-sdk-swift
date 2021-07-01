// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension OpsItemLimitExceededException: AWSHttpServiceError {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: OpsItemLimitExceededExceptionBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.limit = output.limit
            self.limitType = output.limitType
            self.message = output.message
            self.resourceTypes = output.resourceTypes
        } else {
            self.limit = 0
            self.limitType = nil
            self.message = nil
            self.resourceTypes = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}