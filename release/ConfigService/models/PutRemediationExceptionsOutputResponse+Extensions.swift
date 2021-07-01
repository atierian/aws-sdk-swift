// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PutRemediationExceptionsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: PutRemediationExceptionsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.failedBatches = output.failedBatches
        } else {
            self.failedBatches = nil
        }
    }
}