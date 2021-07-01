// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreatePlatformApplicationOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreatePlatformApplicationOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.platformApplicationArn = output.platformApplicationArn
        } else {
            self.platformApplicationArn = nil
        }
    }
}