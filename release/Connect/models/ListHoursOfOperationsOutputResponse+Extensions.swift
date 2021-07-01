// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListHoursOfOperationsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListHoursOfOperationsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.hoursOfOperationSummaryList = output.hoursOfOperationSummaryList
            self.nextToken = output.nextToken
        } else {
            self.hoursOfOperationSummaryList = nil
            self.nextToken = nil
        }
    }
}