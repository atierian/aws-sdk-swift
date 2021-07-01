// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListStreamProcessorsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListStreamProcessorsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.streamProcessors = output.streamProcessors
        } else {
            self.nextToken = nil
            self.streamProcessors = nil
        }
    }
}