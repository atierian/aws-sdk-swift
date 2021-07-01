// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateUploadUrlOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateUploadUrlOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.importId = output.importId
            self.uploadUrl = output.uploadUrl
        } else {
            self.importId = nil
            self.uploadUrl = nil
        }
    }
}