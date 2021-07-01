// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PutAccountPreferencesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: PutAccountPreferencesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.resourceIdPreference = output.resourceIdPreference
        } else {
            self.resourceIdPreference = nil
        }
    }
}