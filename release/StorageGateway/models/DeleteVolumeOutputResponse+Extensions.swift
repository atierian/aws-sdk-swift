// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeleteVolumeOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DeleteVolumeOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.volumeARN = output.volumeARN
        } else {
            self.volumeARN = nil
        }
    }
}