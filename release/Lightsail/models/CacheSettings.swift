// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the cache settings of an Amazon Lightsail content delivery network (CDN)
///       distribution.</p>
///          <p>These settings apply only to your distribution's <code>cacheBehaviors</code> (including
///       the <code>defaultCacheBehavior</code>) that have a <code>behavior</code> of
///       <code>cache</code>.</p>
public struct CacheSettings: Equatable {
    /// <p>The HTTP methods that are processed and forwarded to the distribution's origin.</p>
    ///          <p>You can specify the following options:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>GET,HEAD</code> - The distribution forwards the <code>GET</code> and
    ///             <code>HEAD</code> methods.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>GET,HEAD,OPTIONS</code> - The distribution forwards the <code>GET</code>,
    ///             <code>HEAD</code>, and <code>OPTIONS</code> methods.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>GET,HEAD,OPTIONS,PUT,PATCH,POST,DELETE</code> - The distribution forwards the
    ///             <code>GET</code>, <code>HEAD</code>, <code>OPTIONS</code>, <code>PUT</code>,
    ///             <code>PATCH</code>, <code>POST</code>, and <code>DELETE</code> methods.</p>
    ///             </li>
    ///          </ul>
    ///          <p>If you specify the third option, you might need to restrict access to your distribution's
    ///       origin so users can't perform operations that you don't want them to. For example, you might
    ///       not want users to have permission to delete objects from your origin.</p>
    public let allowedHTTPMethods: String?
    /// <p>The HTTP method responses that are cached by your distribution.</p>
    ///          <p>You can specify the following options:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>GET,HEAD</code> - The distribution caches responses to the <code>GET</code> and
    ///             <code>HEAD</code> methods.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>GET,HEAD,OPTIONS</code> - The distribution caches responses to the
    ///             <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> methods.</p>
    ///             </li>
    ///          </ul>
    public let cachedHTTPMethods: String?
    /// <p>The default amount of time that objects stay in the distribution's cache before the
    ///       distribution forwards another request to the origin to determine whether the content has been
    ///       updated.</p>
    ///          <note>
    ///             <p>The value specified applies only when the origin does not add HTTP headers such as
    ///           <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and
    ///           <code>Expires</code> to objects.</p>
    ///          </note>
    public let defaultTTL: Int?
    /// <p>An object that describes the cookies that are forwarded to the origin. Your content is
    ///       cached based on the cookies that are forwarded.</p>
    public let forwardedCookies: CookieObject?
    /// <p>An object that describes the headers that are forwarded to the origin. Your content is
    ///       cached based on the headers that are forwarded.</p>
    public let forwardedHeaders: HeaderObject?
    /// <p>An object that describes the query strings that are forwarded to the origin. Your content
    ///       is cached based on the query strings that are forwarded.</p>
    public let forwardedQueryStrings: QueryStringObject?
    /// <p>The maximum amount of time that objects stay in the distribution's cache before the
    ///       distribution forwards another request to the origin to determine whether the object has been
    ///       updated.</p>
    ///          <p>The value specified applies only when the origin adds HTTP headers such as
    ///         <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and
    ///         <code>Expires</code> to objects.</p>
    public let maximumTTL: Int?
    /// <p>The minimum amount of time that objects stay in the distribution's cache before the
    ///       distribution forwards another request to the origin to determine whether the object has been
    ///       updated.</p>
    ///          <p>A value of <code>0</code> must be specified for <code>minimumTTL</code> if the
    ///       distribution is configured to forward all headers to the origin.</p>
    public let minimumTTL: Int?

    public init (
        allowedHTTPMethods: String? = nil,
        cachedHTTPMethods: String? = nil,
        defaultTTL: Int? = nil,
        forwardedCookies: CookieObject? = nil,
        forwardedHeaders: HeaderObject? = nil,
        forwardedQueryStrings: QueryStringObject? = nil,
        maximumTTL: Int? = nil,
        minimumTTL: Int? = nil
    )
    {
        self.allowedHTTPMethods = allowedHTTPMethods
        self.cachedHTTPMethods = cachedHTTPMethods
        self.defaultTTL = defaultTTL
        self.forwardedCookies = forwardedCookies
        self.forwardedHeaders = forwardedHeaders
        self.forwardedQueryStrings = forwardedQueryStrings
        self.maximumTTL = maximumTTL
        self.minimumTTL = minimumTTL
    }
}

extension CacheSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CacheSettings(allowedHTTPMethods: \(String(describing: allowedHTTPMethods)), cachedHTTPMethods: \(String(describing: cachedHTTPMethods)), defaultTTL: \(String(describing: defaultTTL)), forwardedCookies: \(String(describing: forwardedCookies)), forwardedHeaders: \(String(describing: forwardedHeaders)), forwardedQueryStrings: \(String(describing: forwardedQueryStrings)), maximumTTL: \(String(describing: maximumTTL)), minimumTTL: \(String(describing: minimumTTL)))"}
}