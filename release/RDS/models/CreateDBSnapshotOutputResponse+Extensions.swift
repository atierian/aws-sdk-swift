// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateDBSnapshotOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateDBSnapshotOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.dBSnapshot = output.dBSnapshot
        } else {
            self.dBSnapshot = nil
        }
    }
}