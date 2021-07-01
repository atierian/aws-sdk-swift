// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeStudioOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeStudioOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.studio = output.studio
        } else {
            self.studio = nil
        }
    }
}