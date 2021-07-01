// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeRuntimeConfigurationOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeRuntimeConfigurationOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.runtimeConfiguration = output.runtimeConfiguration
        } else {
            self.runtimeConfiguration = nil
        }
    }
}