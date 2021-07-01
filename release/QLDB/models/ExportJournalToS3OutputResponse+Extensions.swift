// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ExportJournalToS3OutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ExportJournalToS3OutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.exportId = output.exportId
        } else {
            self.exportId = nil
        }
    }
}