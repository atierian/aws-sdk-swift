// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateMLModelOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateMLModelOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.mLModelId = output.mLModelId
        } else {
            self.mLModelId = nil
        }
    }
}