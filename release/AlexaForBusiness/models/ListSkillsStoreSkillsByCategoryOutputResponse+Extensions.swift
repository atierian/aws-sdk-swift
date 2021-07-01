// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListSkillsStoreSkillsByCategoryOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListSkillsStoreSkillsByCategoryOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.skillsStoreSkills = output.skillsStoreSkills
        } else {
            self.nextToken = nil
            self.skillsStoreSkills = nil
        }
    }
}