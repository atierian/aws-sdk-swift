// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The refresh cache information for the file share.</p>
public struct CacheAttributes: Equatable {
    /// <p>Refreshes a file share's cache by using Time To Live (TTL). TTL is the length of
    ///          time since the last refresh after which access to the directory would cause the file
    ///          gateway to first refresh that directory's contents from the Amazon S3 bucket or Amazon FSx file system. The TTL
    ///          duration is in seconds.</p>
    ///
    ///          <p>Valid Values: 300 to 2,592,000 seconds (5 minutes to 30 days)</p>
    public let cacheStaleTimeoutInSeconds: Int?

    public init (
        cacheStaleTimeoutInSeconds: Int? = nil
    )
    {
        self.cacheStaleTimeoutInSeconds = cacheStaleTimeoutInSeconds
    }
}

extension CacheAttributes: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CacheAttributes(cacheStaleTimeoutInSeconds: \(String(describing: cacheStaleTimeoutInSeconds)))"}
}