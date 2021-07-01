// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetSearchSuggestionsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetSearchSuggestionsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.propertyNameSuggestions = output.propertyNameSuggestions
        } else {
            self.propertyNameSuggestions = nil
        }
    }
}