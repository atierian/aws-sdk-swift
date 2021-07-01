// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An object that represents an access log file.</p>
public struct FileAccessLog: Equatable {
    /// <p>The file path to write access logs to. You can use <code>/dev/stdout</code> to send
    ///          access logs to standard out and configure your Envoy container to use a log driver, such as
    ///             <code>awslogs</code>, to export the access logs to a log storage service such as Amazon
    ///          CloudWatch Logs. You can also specify a path in the Envoy container's file system to write
    ///          the files to disk.</p>
    ///          <note>
    ///             <p>The Envoy process must have write permissions to the path that you specify here.
    ///             Otherwise, Envoy fails to bootstrap properly.</p>
    ///          </note>
    public let path: String?

    public init (
        path: String? = nil
    )
    {
        self.path = path
    }
}

extension FileAccessLog: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FileAccessLog(path: \(String(describing: path)))"}
}