// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StartAttachmentUploadOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: StartAttachmentUploadOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.attachmentId = output.attachmentId
            self.uploadMetadata = output.uploadMetadata
        } else {
            self.attachmentId = nil
            self.uploadMetadata = nil
        }
    }
}