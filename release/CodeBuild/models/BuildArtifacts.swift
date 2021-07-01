// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about build output artifacts.</p>
public struct BuildArtifacts: Equatable {
    /// <p> An identifier for this artifact definition. </p>
    public let artifactIdentifier: String?
    /// <p>Specifies the access for objects that are uploaded to an Amazon S3 bucket that is owned by
    ///             another account.</p>
    ///         <p>By default, only the account that uploads the objects to the bucket has access to
    ///             these objects. This property allows you to give the bucket owner access to these
    ///             objects.</p>
    ///          <dl>
    ///             <dt>NONE</dt>
    ///             <dd>
    ///                 <p>The bucket owner does not have access to the objects. This is the
    ///                         default.</p>
    ///             </dd>
    ///             <dt>READ_ONLY</dt>
    ///             <dd>
    ///               <p>The bucket owner has read only access to the objects. The uploading account
    ///                         retains ownership of the objects.</p>
    ///             </dd>
    ///             <dt>FULL</dt>
    ///             <dd>
    ///               <p>The bucket owner has full access to the objects. Object ownership is determined
    ///                         by the following criteria:</p>
    ///                     <ul>
    ///                   <li>
    ///                             <p>If the bucket is configured with the <b>Bucket
    ///                                     owner preferred</b> setting, the bucket owner owns the
    ///                                 objects. The uploading account will have object access as specified
    ///                                 by the bucket's policy.</p>
    ///                         </li>
    ///                   <li>
    ///                             <p>Otherwise, the uploading account retains ownership of the
    ///                                 objects.</p>
    ///                         </li>
    ///                </ul>
    ///                     <p>For more information about Amazon S3 object ownership, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling ownership of uploaded objects using S3
    ///                             Object Ownership</a> in the <i>Amazon Simple Storage Service User
    ///                         Guide</i>.</p>
    ///             </dd>
    ///          </dl>
    public let bucketOwnerAccess: BucketOwnerAccess?
    /// <p> Information that tells you if encryption for build artifacts is disabled. </p>
    public let encryptionDisabled: Bool?
    /// <p>Information about the location of the build artifacts.</p>
    public let location: String?
    /// <p>The MD5 hash of the build artifact.</p>
    ///         <p>You can use this hash along with a checksum tool to confirm file integrity and
    ///             authenticity.</p>
    ///         <note>
    ///             <p>This value is available only if the build project's <code>packaging</code> value
    ///                 is set to <code>ZIP</code>.</p>
    ///         </note>
    public let md5sum: String?
    /// <p> If this flag is set, a name specified in the buildspec file overrides the artifact
    ///             name. The name specified in a buildspec file is calculated at build time and uses the
    ///             Shell Command Language. For example, you can append a date and time to your artifact
    ///             name so that it is always unique. </p>
    public let overrideArtifactName: Bool?
    /// <p>The SHA-256 hash of the build artifact.</p>
    ///         <p>You can use this hash along with a checksum tool to confirm file integrity and
    ///             authenticity.</p>
    ///         <note>
    ///             <p>This value is available only if the build project's <code>packaging</code> value
    ///                 is set to <code>ZIP</code>.</p>
    ///         </note>
    public let sha256sum: String?

    public init (
        artifactIdentifier: String? = nil,
        bucketOwnerAccess: BucketOwnerAccess? = nil,
        encryptionDisabled: Bool? = nil,
        location: String? = nil,
        md5sum: String? = nil,
        overrideArtifactName: Bool? = nil,
        sha256sum: String? = nil
    )
    {
        self.artifactIdentifier = artifactIdentifier
        self.bucketOwnerAccess = bucketOwnerAccess
        self.encryptionDisabled = encryptionDisabled
        self.location = location
        self.md5sum = md5sum
        self.overrideArtifactName = overrideArtifactName
        self.sha256sum = sha256sum
    }
}

extension BuildArtifacts: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BuildArtifacts(artifactIdentifier: \(String(describing: artifactIdentifier)), bucketOwnerAccess: \(String(describing: bucketOwnerAccess)), encryptionDisabled: \(String(describing: encryptionDisabled)), location: \(String(describing: location)), md5sum: \(String(describing: md5sum)), overrideArtifactName: \(String(describing: overrideArtifactName)), sha256sum: \(String(describing: sha256sum)))"}
}