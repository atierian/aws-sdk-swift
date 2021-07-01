// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetCertificateOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetCertificateOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.certificate = output.certificate
            self.certificateChain = output.certificateChain
        } else {
            self.certificate = nil
            self.certificateChain = nil
        }
    }
}