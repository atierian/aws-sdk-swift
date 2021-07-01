// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Hls Media Store Settings
public struct HlsMediaStoreSettings: Equatable {
    /// Number of seconds to wait before retrying connection to the CDN if the connection is lost.
    public let connectionRetryInterval: Int
    /// Size in seconds of file cache for streaming outputs.
    public let filecacheDuration: Int
    /// When set to temporal, output files are stored in non-persistent memory for faster reading and writing.
    public let mediaStoreStorageClass: HlsMediaStoreStorageClass?
    /// Number of retry attempts that will be made before the Live Event is put into an error state.
    public let numRetries: Int
    /// If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
    public let restartDelay: Int

    public init (
        connectionRetryInterval: Int = 0,
        filecacheDuration: Int = 0,
        mediaStoreStorageClass: HlsMediaStoreStorageClass? = nil,
        numRetries: Int = 0,
        restartDelay: Int = 0
    )
    {
        self.connectionRetryInterval = connectionRetryInterval
        self.filecacheDuration = filecacheDuration
        self.mediaStoreStorageClass = mediaStoreStorageClass
        self.numRetries = numRetries
        self.restartDelay = restartDelay
    }
}

extension HlsMediaStoreSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "HlsMediaStoreSettings(connectionRetryInterval: \(String(describing: connectionRetryInterval)), filecacheDuration: \(String(describing: filecacheDuration)), mediaStoreStorageClass: \(String(describing: mediaStoreStorageClass)), numRetries: \(String(describing: numRetries)), restartDelay: \(String(describing: restartDelay)))"}
}