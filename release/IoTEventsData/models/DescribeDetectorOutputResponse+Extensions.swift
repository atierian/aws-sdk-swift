// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeDetectorOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeDetectorOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.detector = output.detector
        } else {
            self.detector = nil
        }
    }
}