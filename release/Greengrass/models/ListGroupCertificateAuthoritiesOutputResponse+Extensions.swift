// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListGroupCertificateAuthoritiesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListGroupCertificateAuthoritiesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.groupCertificateAuthorities = output.groupCertificateAuthorities
        } else {
            self.groupCertificateAuthorities = nil
        }
    }
}