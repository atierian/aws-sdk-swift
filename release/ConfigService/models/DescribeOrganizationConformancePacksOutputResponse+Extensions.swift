// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeOrganizationConformancePacksOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeOrganizationConformancePacksOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.organizationConformancePacks = output.organizationConformancePacks
        } else {
            self.nextToken = nil
            self.organizationConformancePacks = nil
        }
    }
}