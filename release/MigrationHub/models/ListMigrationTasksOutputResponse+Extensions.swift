// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListMigrationTasksOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListMigrationTasksOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.migrationTaskSummaryList = output.migrationTaskSummaryList
            self.nextToken = output.nextToken
        } else {
            self.migrationTaskSummaryList = nil
            self.nextToken = nil
        }
    }
}