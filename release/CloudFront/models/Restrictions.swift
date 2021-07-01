// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A complex type that identifies ways in which you want to restrict distribution of your
/// 			content.</p>
public struct Restrictions: Equatable {
    /// <p>A complex type that controls the countries in which your content is distributed. CloudFront
    /// 			determines the location of your users using <code>MaxMind</code> GeoIP databases.</p>
    public let geoRestriction: GeoRestriction?

    public init (
        geoRestriction: GeoRestriction? = nil
    )
    {
        self.geoRestriction = geoRestriction
    }
}

extension Restrictions: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Restrictions(geoRestriction: \(String(describing: geoRestriction)))"}
}