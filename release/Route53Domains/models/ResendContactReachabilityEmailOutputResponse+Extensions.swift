// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ResendContactReachabilityEmailOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ResendContactReachabilityEmailOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.domainName = output.domainName
            self.emailAddress = output.emailAddress
            self.isAlreadyVerified = output.isAlreadyVerified
        } else {
            self.domainName = nil
            self.emailAddress = nil
            self.isAlreadyVerified = nil
        }
    }
}