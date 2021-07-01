// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeNamespaceOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeNamespaceOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.namespace = output.namespace
            self.requestId = output.requestId
        } else {
            self.namespace = nil
            self.requestId = nil
        }
        self.status = httpResponse.statusCode.rawValue
    }
}