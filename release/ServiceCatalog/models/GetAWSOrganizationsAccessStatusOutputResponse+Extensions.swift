// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetAWSOrganizationsAccessStatusOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetAWSOrganizationsAccessStatusOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.accessStatus = output.accessStatus
        } else {
            self.accessStatus = nil
        }
    }
}