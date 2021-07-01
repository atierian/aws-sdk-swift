// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeFleetHistoryOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeFleetHistoryOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.fleetId = output.fleetId
            self.historyRecords = output.historyRecords
            self.lastEvaluatedTime = output.lastEvaluatedTime
            self.nextToken = output.nextToken
            self.startTime = output.startTime
        } else {
            self.fleetId = nil
            self.historyRecords = nil
            self.lastEvaluatedTime = nil
            self.nextToken = nil
            self.startTime = nil
        }
    }
}