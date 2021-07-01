// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListMailboxExportJobsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListMailboxExportJobsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.jobs = output.jobs
            self.nextToken = output.nextToken
        } else {
            self.jobs = nil
            self.nextToken = nil
        }
    }
}