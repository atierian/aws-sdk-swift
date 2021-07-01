// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeleteTapeArchiveOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DeleteTapeArchiveOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.tapeARN = output.tapeARN
        } else {
            self.tapeARN = nil
        }
    }
}