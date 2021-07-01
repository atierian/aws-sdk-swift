// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisposePackageVersionsInput: Equatable {
    /// <p>
    ///       The name of the domain that contains the repository you want to dispose.
    ///     </p>
    public let domain: String?
    /// <p>
    ///         The 12-digit account number of the AWS account that owns the domain. It does not include
    ///         dashes or spaces.
    ///       </p>
    public let domainOwner: String?
    /// <p>
    ///       The expected status of the package version to dispose. Valid values are:
    ///     </p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>Published</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Unfinished</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Unlisted</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Archived</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>Disposed</code>
    ///                </p>
    ///             </li>
    ///          </ul>
    public let expectedStatus: PackageVersionStatus?
    /// <p>
    ///       A format that specifies the type of package versions you want to dispose. The valid values are:
    ///     </p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>npm</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>pypi</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>maven</code>
    ///                </p>
    ///             </li>
    ///          </ul>
    public let format: PackageFormat?
    /// <p>
    ///       The namespace of the package. The package component that specifies its
    ///       namespace depends on its type. For example:
    ///     </p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///           The namespace of a Maven package is its <code>groupId</code>.
    ///         </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///           The namespace of an npm package is its <code>scope</code>.
    ///         </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///           A Python package does not contain a corresponding component, so
    ///           Python packages do not have a namespace.
    ///         </p>
    ///             </li>
    ///          </ul>
    public let namespace: String?
    /// <p>
    ///       The name of the package with the versions you want to dispose.
    ///     </p>
    public let package: String?
    /// <p>
    ///       The name of the repository that contains the package versions you want to dispose.
    ///     </p>
    public let repository: String?
    /// <p>
    ///       The revisions of the package versions you want to dispose.
    ///     </p>
    public let versionRevisions: [String:String]?
    /// <p>
    ///       The versions of the package you want to dispose.
    ///     </p>
    public let versions: [String]?

    public init (
        domain: String? = nil,
        domainOwner: String? = nil,
        expectedStatus: PackageVersionStatus? = nil,
        format: PackageFormat? = nil,
        namespace: String? = nil,
        package: String? = nil,
        repository: String? = nil,
        versionRevisions: [String:String]? = nil,
        versions: [String]? = nil
    )
    {
        self.domain = domain
        self.domainOwner = domainOwner
        self.expectedStatus = expectedStatus
        self.format = format
        self.namespace = namespace
        self.package = package
        self.repository = repository
        self.versionRevisions = versionRevisions
        self.versions = versions
    }
}

extension DisposePackageVersionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisposePackageVersionsInput(domain: \(String(describing: domain)), domainOwner: \(String(describing: domainOwner)), expectedStatus: \(String(describing: expectedStatus)), format: \(String(describing: format)), namespace: \(String(describing: namespace)), package: \(String(describing: package)), repository: \(String(describing: repository)), versionRevisions: \(String(describing: versionRevisions)), versions: \(String(describing: versions)))"}
}