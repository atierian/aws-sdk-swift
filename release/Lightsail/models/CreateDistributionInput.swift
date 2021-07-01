// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateDistributionInput: Equatable {
    /// <p>The bundle ID to use for the distribution.</p>
    ///          <p>A distribution bundle describes the specifications of your distribution, such as the
    ///       monthly cost and monthly network transfer quota.</p>
    ///          <p>Use the <code>GetDistributionBundles</code> action to get a list of distribution bundle
    ///       IDs that you can specify.</p>
    public let bundleId: String?
    /// <p>An object that describes the cache behavior settings for the distribution.</p>
    public let cacheBehaviorSettings: CacheSettings?
    /// <p>An array of objects that describe the per-path cache behavior for the distribution.</p>
    public let cacheBehaviors: [CacheBehaviorPerPath]?
    /// <p>An object that describes the default cache behavior for the distribution.</p>
    public let defaultCacheBehavior: CacheBehavior?
    /// <p>The name for the distribution.</p>
    public let distributionName: String?
    /// <p>The IP address type for the distribution.</p>
    ///
    ///          <p>The possible values are <code>ipv4</code> for IPv4 only, and <code>dualstack</code> for
    ///       IPv4 and IPv6.</p>
    ///
    ///          <p>The default value is <code>dualstack</code>.</p>
    public let ipAddressType: IpAddressType?
    /// <p>An object that describes the origin resource for the distribution, such as a Lightsail
    ///       instance or load balancer.</p>
    ///          <p>The distribution pulls, caches, and serves content from the origin.</p>
    public let origin: InputOrigin?
    /// <p>The tag keys and optional values to add to the distribution during create.</p>
    ///          <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>
    public let tags: [Tag]?

    public init (
        bundleId: String? = nil,
        cacheBehaviorSettings: CacheSettings? = nil,
        cacheBehaviors: [CacheBehaviorPerPath]? = nil,
        defaultCacheBehavior: CacheBehavior? = nil,
        distributionName: String? = nil,
        ipAddressType: IpAddressType? = nil,
        origin: InputOrigin? = nil,
        tags: [Tag]? = nil
    )
    {
        self.bundleId = bundleId
        self.cacheBehaviorSettings = cacheBehaviorSettings
        self.cacheBehaviors = cacheBehaviors
        self.defaultCacheBehavior = defaultCacheBehavior
        self.distributionName = distributionName
        self.ipAddressType = ipAddressType
        self.origin = origin
        self.tags = tags
    }
}

extension CreateDistributionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateDistributionInput(bundleId: \(String(describing: bundleId)), cacheBehaviorSettings: \(String(describing: cacheBehaviorSettings)), cacheBehaviors: \(String(describing: cacheBehaviors)), defaultCacheBehavior: \(String(describing: defaultCacheBehavior)), distributionName: \(String(describing: distributionName)), ipAddressType: \(String(describing: ipAddressType)), origin: \(String(describing: origin)), tags: \(String(describing: tags)))"}
}