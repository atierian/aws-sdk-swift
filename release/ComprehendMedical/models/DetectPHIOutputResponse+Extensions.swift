// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DetectPHIOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DetectPHIOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.entities = output.entities
            self.modelVersion = output.modelVersion
            self.paginationToken = output.paginationToken
        } else {
            self.entities = nil
            self.modelVersion = nil
            self.paginationToken = nil
        }
    }
}