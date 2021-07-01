// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Properties describing a Realtime script.</p>
///         <p>
///             <b>Related actions</b>
///          </p>
///                     <p>
///             <a>CreateScript</a> |
///                     <a>ListScripts</a> |
///                     <a>DescribeScript</a> |
///                     <a>UpdateScript</a> |
///                     <a>DeleteScript</a> |
///                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
///          </p>
public struct Script: Equatable {
    /// <p>A time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds (for example <code>"1469498468.057"</code>).</p>
    public let creationTime: Date?
    /// <p>A descriptive label that is associated with a script. Script names do not need to be unique.</p>
    public let name: String?
    /// <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift script resource and uniquely identifies it. ARNs are unique across all Regions.  In a GameLift script ARN, the resource ID matches the
    ///                 <i>ScriptId</i> value.</p>
    public let scriptArn: String?
    /// <p>A unique identifier for the Realtime script</p>
    public let scriptId: String?
    /// <p>The file size of the uploaded Realtime script, expressed in bytes. When files are
    ///             uploaded from an S3 location, this value remains at "0".</p>
    public let sizeOnDisk: Int?
    /// <p>The location in Amazon S3 where build or script files are stored for access by Amazon GameLift. This
    ///             location is specified in <a>CreateBuild</a>, <a>CreateScript</a>,
    ///             and <a>UpdateScript</a> requests. </p>
    public let storageLocation: S3Location?
    /// <p>Version information that is associated with a build or script. Version strings do not need to be unique.</p>
    public let version: String?

    public init (
        creationTime: Date? = nil,
        name: String? = nil,
        scriptArn: String? = nil,
        scriptId: String? = nil,
        sizeOnDisk: Int? = nil,
        storageLocation: S3Location? = nil,
        version: String? = nil
    )
    {
        self.creationTime = creationTime
        self.name = name
        self.scriptArn = scriptArn
        self.scriptId = scriptId
        self.sizeOnDisk = sizeOnDisk
        self.storageLocation = storageLocation
        self.version = version
    }
}

extension Script: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Script(creationTime: \(String(describing: creationTime)), name: \(String(describing: name)), scriptArn: \(String(describing: scriptArn)), scriptId: \(String(describing: scriptId)), sizeOnDisk: \(String(describing: sizeOnDisk)), storageLocation: \(String(describing: storageLocation)), version: \(String(describing: version)))"}
}