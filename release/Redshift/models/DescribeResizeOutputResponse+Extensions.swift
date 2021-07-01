// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeResizeOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeResizeOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.avgResizeRateInMegaBytesPerSecond = output.avgResizeRateInMegaBytesPerSecond
            self.dataTransferProgressPercent = output.dataTransferProgressPercent
            self.elapsedTimeInSeconds = output.elapsedTimeInSeconds
            self.estimatedTimeToCompletionInSeconds = output.estimatedTimeToCompletionInSeconds
            self.importTablesCompleted = output.importTablesCompleted
            self.importTablesInProgress = output.importTablesInProgress
            self.importTablesNotStarted = output.importTablesNotStarted
            self.message = output.message
            self.progressInMegaBytes = output.progressInMegaBytes
            self.resizeType = output.resizeType
            self.status = output.status
            self.targetClusterType = output.targetClusterType
            self.targetEncryptionType = output.targetEncryptionType
            self.targetNodeType = output.targetNodeType
            self.targetNumberOfNodes = output.targetNumberOfNodes
            self.totalResizeDataInMegaBytes = output.totalResizeDataInMegaBytes
        } else {
            self.avgResizeRateInMegaBytesPerSecond = nil
            self.dataTransferProgressPercent = nil
            self.elapsedTimeInSeconds = nil
            self.estimatedTimeToCompletionInSeconds = nil
            self.importTablesCompleted = nil
            self.importTablesInProgress = nil
            self.importTablesNotStarted = nil
            self.message = nil
            self.progressInMegaBytes = nil
            self.resizeType = nil
            self.status = nil
            self.targetClusterType = nil
            self.targetEncryptionType = nil
            self.targetNodeType = nil
            self.targetNumberOfNodes = nil
            self.totalResizeDataInMegaBytes = nil
        }
    }
}