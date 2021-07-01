// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetSegmentDetectionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetSegmentDetectionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.audioMetadata = output.audioMetadata
            self.jobStatus = output.jobStatus
            self.nextToken = output.nextToken
            self.segments = output.segments
            self.selectedSegmentTypes = output.selectedSegmentTypes
            self.statusMessage = output.statusMessage
            self.videoMetadata = output.videoMetadata
        } else {
            self.audioMetadata = nil
            self.jobStatus = nil
            self.nextToken = nil
            self.segments = nil
            self.selectedSegmentTypes = nil
            self.statusMessage = nil
            self.videoMetadata = nil
        }
    }
}