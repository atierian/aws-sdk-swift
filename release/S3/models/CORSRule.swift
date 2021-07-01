// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies a cross-origin access rule for an Amazon S3 bucket.</p>
public struct CORSRule: Equatable {
    /// <p>Headers that are specified in the <code>Access-Control-Request-Headers</code> header.
    ///          These headers are allowed in a preflight OPTIONS request. In response to any preflight
    ///          OPTIONS request, Amazon S3 returns any requested headers that are allowed.</p>
    public let allowedHeaders: [String]?
    /// <p>An HTTP method that you allow the origin to execute. Valid values are <code>GET</code>,
    ///             <code>PUT</code>, <code>HEAD</code>, <code>POST</code>, and <code>DELETE</code>.</p>
    public let allowedMethods: [String]?
    /// <p>One or more origins you want customers to be able to access the bucket from.</p>
    public let allowedOrigins: [String]?
    /// <p>One or more headers in the response that you want customers to be able to access from
    ///          their applications (for example, from a JavaScript <code>XMLHttpRequest</code>
    ///          object).</p>
    public let exposeHeaders: [String]?
    /// <p>Unique identifier for the rule. The value cannot be longer than 255 characters.</p>
    public let iD: String?
    /// <p>The time in seconds that your browser is to cache the preflight response for the
    ///          specified resource.</p>
    public let maxAgeSeconds: Int

    public init (
        allowedHeaders: [String]? = nil,
        allowedMethods: [String]? = nil,
        allowedOrigins: [String]? = nil,
        exposeHeaders: [String]? = nil,
        iD: String? = nil,
        maxAgeSeconds: Int = 0
    )
    {
        self.allowedHeaders = allowedHeaders
        self.allowedMethods = allowedMethods
        self.allowedOrigins = allowedOrigins
        self.exposeHeaders = exposeHeaders
        self.iD = iD
        self.maxAgeSeconds = maxAgeSeconds
    }
}

extension CORSRule: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CORSRule(allowedHeaders: \(String(describing: allowedHeaders)), allowedMethods: \(String(describing: allowedMethods)), allowedOrigins: \(String(describing: allowedOrigins)), exposeHeaders: \(String(describing: exposeHeaders)), iD: \(String(describing: iD)), maxAgeSeconds: \(String(describing: maxAgeSeconds)))"}
}