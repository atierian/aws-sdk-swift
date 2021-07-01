// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension AlreadyExistsException: AWSHttpServiceError {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: AlreadyExistsExceptionBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.arn = output.arn
            self.code = output.code
            self.context = output.context
            self.creatorRequestId = output.creatorRequestId
            self.message = output.message
            self.type = output.type
        } else {
            self.arn = nil
            self.code = nil
            self.context = nil
            self.creatorRequestId = nil
            self.message = nil
            self.type = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}