// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DissociatePackageOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DissociatePackageOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.domainPackageDetails = output.domainPackageDetails
        } else {
            self.domainPackageDetails = nil
        }
    }
}