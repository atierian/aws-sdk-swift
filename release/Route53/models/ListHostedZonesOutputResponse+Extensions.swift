// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListHostedZonesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListHostedZonesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.hostedZones = output.hostedZones
            self.isTruncated = output.isTruncated
            self.marker = output.marker
            self.maxItems = output.maxItems
            self.nextMarker = output.nextMarker
        } else {
            self.hostedZones = nil
            self.isTruncated = false
            self.marker = nil
            self.maxItems = nil
            self.nextMarker = nil
        }
    }
}