// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListDetectorModelsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListDetectorModelsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.detectorModelSummaries = output.detectorModelSummaries
            self.nextToken = output.nextToken
        } else {
            self.detectorModelSummaries = nil
            self.nextToken = nil
        }
    }
}