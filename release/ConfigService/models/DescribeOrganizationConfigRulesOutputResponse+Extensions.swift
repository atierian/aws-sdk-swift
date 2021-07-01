// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeOrganizationConfigRulesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeOrganizationConfigRulesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.organizationConfigRules = output.organizationConfigRules
        } else {
            self.nextToken = nil
            self.organizationConfigRules = nil
        }
    }
}