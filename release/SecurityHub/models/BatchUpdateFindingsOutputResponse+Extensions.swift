// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension BatchUpdateFindingsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: BatchUpdateFindingsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.processedFindings = output.processedFindings
            self.unprocessedFindings = output.unprocessedFindings
        } else {
            self.processedFindings = nil
            self.unprocessedFindings = nil
        }
    }
}