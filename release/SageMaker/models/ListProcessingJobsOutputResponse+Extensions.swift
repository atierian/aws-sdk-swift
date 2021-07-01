// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListProcessingJobsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListProcessingJobsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.processingJobSummaries = output.processingJobSummaries
        } else {
            self.nextToken = nil
            self.processingJobSummaries = nil
        }
    }
}