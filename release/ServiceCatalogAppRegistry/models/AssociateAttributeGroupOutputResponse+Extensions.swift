// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AssociateAttributeGroupOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: AssociateAttributeGroupOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.applicationArn = output.applicationArn
            self.attributeGroupArn = output.attributeGroupArn
        } else {
            self.applicationArn = nil
            self.attributeGroupArn = nil
        }
    }
}