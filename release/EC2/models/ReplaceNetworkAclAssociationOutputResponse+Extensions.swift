// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ReplaceNetworkAclAssociationOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ReplaceNetworkAclAssociationOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.newAssociationId = output.newAssociationId
        } else {
            self.newAssociationId = nil
        }
    }
}