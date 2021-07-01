// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ReplaceRouteTableAssociationOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ReplaceRouteTableAssociationOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.associationState = output.associationState
            self.newAssociationId = output.newAssociationId
        } else {
            self.associationState = nil
            self.newAssociationId = nil
        }
    }
}