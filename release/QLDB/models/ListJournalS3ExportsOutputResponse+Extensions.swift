// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListJournalS3ExportsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListJournalS3ExportsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.journalS3Exports = output.journalS3Exports
            self.nextToken = output.nextToken
        } else {
            self.journalS3Exports = nil
            self.nextToken = nil
        }
    }
}