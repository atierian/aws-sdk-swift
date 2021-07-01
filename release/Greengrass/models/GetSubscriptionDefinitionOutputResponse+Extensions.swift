// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetSubscriptionDefinitionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetSubscriptionDefinitionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.arn = output.arn
            self.creationTimestamp = output.creationTimestamp
            self.id = output.id
            self.lastUpdatedTimestamp = output.lastUpdatedTimestamp
            self.latestVersion = output.latestVersion
            self.latestVersionArn = output.latestVersionArn
            self.name = output.name
            self.tags = output.tags
        } else {
            self.arn = nil
            self.creationTimestamp = nil
            self.id = nil
            self.lastUpdatedTimestamp = nil
            self.latestVersion = nil
            self.latestVersionArn = nil
            self.name = nil
            self.tags = nil
        }
    }
}