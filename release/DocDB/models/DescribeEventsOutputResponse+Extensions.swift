// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeEventsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeEventsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.events = output.events
            self.marker = output.marker
        } else {
            self.events = nil
            self.marker = nil
        }
    }
}