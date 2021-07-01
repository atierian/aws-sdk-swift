// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeInstanceTypesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeInstanceTypesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.instanceTypes = output.instanceTypes
            self.nextToken = output.nextToken
        } else {
            self.instanceTypes = nil
            self.nextToken = nil
        }
    }
}