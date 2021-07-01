// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListCodeReviewsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListCodeReviewsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.codeReviewSummaries = output.codeReviewSummaries
            self.nextToken = output.nextToken
        } else {
            self.codeReviewSummaries = nil
            self.nextToken = nil
        }
    }
}