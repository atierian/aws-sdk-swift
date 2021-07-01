// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListDetectorsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListDetectorsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.detectorIds = output.detectorIds
            self.nextToken = output.nextToken
        } else {
            self.detectorIds = nil
            self.nextToken = nil
        }
    }
}