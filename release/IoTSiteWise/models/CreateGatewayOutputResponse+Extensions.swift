// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateGatewayOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateGatewayOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.gatewayArn = output.gatewayArn
            self.gatewayId = output.gatewayId
        } else {
            self.gatewayArn = nil
            self.gatewayId = nil
        }
    }
}