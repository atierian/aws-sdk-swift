// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListProgressUpdateStreamsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListProgressUpdateStreamsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.progressUpdateStreamSummaryList = output.progressUpdateStreamSummaryList
        } else {
            self.nextToken = nil
            self.progressUpdateStreamSummaryList = nil
        }
    }
}