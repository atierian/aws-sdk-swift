// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeIdFormatOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeIdFormatOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.statuses = output.statuses
        } else {
            self.statuses = nil
        }
    }
}