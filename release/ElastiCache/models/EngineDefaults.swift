// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the output of a <code>DescribeEngineDefaultParameters</code> operation.</p>
public struct EngineDefaults: Equatable {
    /// <p>A list of parameters specific to a particular cache node type. Each element in the list contains detailed information about one parameter.</p>
    public let cacheNodeTypeSpecificParameters: [CacheNodeTypeSpecificParameter]?
    /// <p>Specifies the name of the cache parameter group family to which the engine default parameters apply.</p>
    ///         <p>Valid values are:
    ///     <code>memcached1.4</code> |
    ///      <code>memcached1.5</code> |
    ///       <code>memcached1.6</code> |
    ///     <code>redis2.6</code> |
    ///     <code>redis2.8</code> |
    ///     <code>redis3.2</code> |
    ///     <code>redis4.0</code> |
    ///      <code>redis5.0</code> |
    ///       <code>redis6.x</code> |
    ///     </p>
    public let cacheParameterGroupFamily: String?
    /// <p>Provides an identifier to allow retrieval of paginated results.</p>
    public let marker: String?
    /// <p>Contains a list of engine default parameters.</p>
    public let parameters: [Parameter]?

    public init (
        cacheNodeTypeSpecificParameters: [CacheNodeTypeSpecificParameter]? = nil,
        cacheParameterGroupFamily: String? = nil,
        marker: String? = nil,
        parameters: [Parameter]? = nil
    )
    {
        self.cacheNodeTypeSpecificParameters = cacheNodeTypeSpecificParameters
        self.cacheParameterGroupFamily = cacheParameterGroupFamily
        self.marker = marker
        self.parameters = parameters
    }
}

extension EngineDefaults: CustomDebugStringConvertible {
    public var debugDescription: String {
        "EngineDefaults(cacheNodeTypeSpecificParameters: \(String(describing: cacheNodeTypeSpecificParameters)), cacheParameterGroupFamily: \(String(describing: cacheParameterGroupFamily)), marker: \(String(describing: marker)), parameters: \(String(describing: parameters)))"}
}