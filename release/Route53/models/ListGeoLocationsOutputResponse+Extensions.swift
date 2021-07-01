// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListGeoLocationsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListGeoLocationsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.geoLocationDetailsList = output.geoLocationDetailsList
            self.isTruncated = output.isTruncated
            self.maxItems = output.maxItems
            self.nextContinentCode = output.nextContinentCode
            self.nextCountryCode = output.nextCountryCode
            self.nextSubdivisionCode = output.nextSubdivisionCode
        } else {
            self.geoLocationDetailsList = nil
            self.isTruncated = false
            self.maxItems = nil
            self.nextContinentCode = nil
            self.nextCountryCode = nil
            self.nextSubdivisionCode = nil
        }
    }
}