// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>
///       Container for request parameters to
///       <code>
///         <a>CreatePackage</a>
///       </code>
///       operation.
///     </p>
public struct CreatePackageInput: Equatable {
    /// <p>Description of the package.</p>
    public let packageDescription: String?
    /// <p>Unique identifier for the package.</p>
    public let packageName: String?
    /// <p>The customer S3 location <code>PackageSource</code> for importing the package.</p>
    public let packageSource: PackageSource?
    /// <p>Type of package. Currently supports only TXT-DICTIONARY.</p>
    public let packageType: PackageType?

    public init (
        packageDescription: String? = nil,
        packageName: String? = nil,
        packageSource: PackageSource? = nil,
        packageType: PackageType? = nil
    )
    {
        self.packageDescription = packageDescription
        self.packageName = packageName
        self.packageSource = packageSource
        self.packageType = packageType
    }
}

extension CreatePackageInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreatePackageInput(packageDescription: \(String(describing: packageDescription)), packageName: \(String(describing: packageName)), packageSource: \(String(describing: packageSource)), packageType: \(String(describing: packageType)))"}
}