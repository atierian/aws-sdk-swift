// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListAlarmModelVersionsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListAlarmModelVersionsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.alarmModelVersionSummaries = output.alarmModelVersionSummaries
            self.nextToken = output.nextToken
        } else {
            self.alarmModelVersionSummaries = nil
            self.nextToken = nil
        }
    }
}