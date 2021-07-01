// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeTemplatePermissionsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeTemplatePermissionsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.permissions = output.permissions
            self.requestId = output.requestId
            self.templateArn = output.templateArn
            self.templateId = output.templateId
        } else {
            self.permissions = nil
            self.requestId = nil
            self.templateArn = nil
            self.templateId = nil
        }
        self.status = httpResponse.statusCode.rawValue
    }
}