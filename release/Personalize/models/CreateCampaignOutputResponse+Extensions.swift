// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateCampaignOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateCampaignOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.campaignArn = output.campaignArn
        } else {
            self.campaignArn = nil
        }
    }
}