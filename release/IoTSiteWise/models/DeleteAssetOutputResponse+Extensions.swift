// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeleteAssetOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DeleteAssetOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.assetStatus = output.assetStatus
        } else {
            self.assetStatus = nil
        }
    }
}