// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ConfirmDeviceOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ConfirmDeviceOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.userConfirmationNecessary = output.userConfirmationNecessary
        } else {
            self.userConfirmationNecessary = false
        }
    }
}