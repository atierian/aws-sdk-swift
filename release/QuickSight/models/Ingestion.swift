// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Information about the SPICE ingestion for a dataset.</p>
public struct Ingestion: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the resource.</p>
    public let arn: String?
    /// <p>The time that this ingestion started.</p>
    public let createdTime: Date?
    /// <p>Error information for this ingestion.</p>
    public let errorInfo: ErrorInfo?
    /// <p>Ingestion ID.</p>
    public let ingestionId: String?
    /// <p>The size of the data ingested, in bytes.</p>
    public let ingestionSizeInBytes: Int
    /// <p>Ingestion status.</p>
    public let ingestionStatus: IngestionStatus?
    /// <p>The time that this ingestion took, measured in seconds.</p>
    public let ingestionTimeInSeconds: Int
    /// <p>Information about a queued dataset SPICE ingestion.</p>
    public let queueInfo: QueueInfo?
    /// <p>Event source for this ingestion.</p>
    public let requestSource: IngestionRequestSource?
    /// <p>Type of this ingestion.</p>
    public let requestType: IngestionRequestType?
    /// <p>Information about rows for a data set SPICE ingestion.</p>
    public let rowInfo: RowInfo?

    public init (
        arn: String? = nil,
        createdTime: Date? = nil,
        errorInfo: ErrorInfo? = nil,
        ingestionId: String? = nil,
        ingestionSizeInBytes: Int = 0,
        ingestionStatus: IngestionStatus? = nil,
        ingestionTimeInSeconds: Int = 0,
        queueInfo: QueueInfo? = nil,
        requestSource: IngestionRequestSource? = nil,
        requestType: IngestionRequestType? = nil,
        rowInfo: RowInfo? = nil
    )
    {
        self.arn = arn
        self.createdTime = createdTime
        self.errorInfo = errorInfo
        self.ingestionId = ingestionId
        self.ingestionSizeInBytes = ingestionSizeInBytes
        self.ingestionStatus = ingestionStatus
        self.ingestionTimeInSeconds = ingestionTimeInSeconds
        self.queueInfo = queueInfo
        self.requestSource = requestSource
        self.requestType = requestType
        self.rowInfo = rowInfo
    }
}

extension Ingestion: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Ingestion(arn: \(String(describing: arn)), createdTime: \(String(describing: createdTime)), errorInfo: \(String(describing: errorInfo)), ingestionId: \(String(describing: ingestionId)), ingestionSizeInBytes: \(String(describing: ingestionSizeInBytes)), ingestionStatus: \(String(describing: ingestionStatus)), ingestionTimeInSeconds: \(String(describing: ingestionTimeInSeconds)), queueInfo: \(String(describing: queueInfo)), requestSource: \(String(describing: requestSource)), requestType: \(String(describing: requestType)), rowInfo: \(String(describing: rowInfo)))"}
}