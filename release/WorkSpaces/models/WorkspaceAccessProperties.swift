// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The device types and operating systems that can be used to access a WorkSpace. For more
///          information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-network-requirements.html">Amazon
///             WorkSpaces Client Network Requirements</a>.</p>
public struct WorkspaceAccessProperties: Equatable {
    /// <p>Indicates whether users can use Android devices to access their WorkSpaces.</p>
    public let deviceTypeAndroid: AccessPropertyValue?
    /// <p>Indicates whether users can use Chromebooks to access their WorkSpaces.</p>
    public let deviceTypeChromeOs: AccessPropertyValue?
    /// <p>Indicates whether users can use iOS devices to access their WorkSpaces.</p>
    public let deviceTypeIos: AccessPropertyValue?
    /// <p>Indicates whether users can use Linux clients to access their WorkSpaces.</p>
    public let deviceTypeLinux: AccessPropertyValue?
    /// <p>Indicates whether users can use macOS clients to access their WorkSpaces. To restrict
    ///          WorkSpaces access to trusted devices (also known as managed devices) with valid
    ///          certificates, specify a value of <code>TRUST</code>. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/trusted-devices.html">Restrict
    ///             WorkSpaces Access to Trusted Devices</a>. </p>
    public let deviceTypeOsx: AccessPropertyValue?
    /// <p>Indicates whether users can access their WorkSpaces through a web browser.</p>
    public let deviceTypeWeb: AccessPropertyValue?
    /// <p>Indicates whether users can use Windows clients to access their WorkSpaces. To restrict
    ///          WorkSpaces access to trusted devices (also known as managed devices) with valid
    ///          certificates, specify a value of <code>TRUST</code>. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/trusted-devices.html">Restrict
    ///             WorkSpaces Access to Trusted Devices</a>. </p>
    public let deviceTypeWindows: AccessPropertyValue?
    /// <p>Indicates whether users can use zero client devices to access their WorkSpaces.</p>
    public let deviceTypeZeroClient: AccessPropertyValue?

    public init (
        deviceTypeAndroid: AccessPropertyValue? = nil,
        deviceTypeChromeOs: AccessPropertyValue? = nil,
        deviceTypeIos: AccessPropertyValue? = nil,
        deviceTypeLinux: AccessPropertyValue? = nil,
        deviceTypeOsx: AccessPropertyValue? = nil,
        deviceTypeWeb: AccessPropertyValue? = nil,
        deviceTypeWindows: AccessPropertyValue? = nil,
        deviceTypeZeroClient: AccessPropertyValue? = nil
    )
    {
        self.deviceTypeAndroid = deviceTypeAndroid
        self.deviceTypeChromeOs = deviceTypeChromeOs
        self.deviceTypeIos = deviceTypeIos
        self.deviceTypeLinux = deviceTypeLinux
        self.deviceTypeOsx = deviceTypeOsx
        self.deviceTypeWeb = deviceTypeWeb
        self.deviceTypeWindows = deviceTypeWindows
        self.deviceTypeZeroClient = deviceTypeZeroClient
    }
}

extension WorkspaceAccessProperties: CustomDebugStringConvertible {
    public var debugDescription: String {
        "WorkspaceAccessProperties(deviceTypeAndroid: \(String(describing: deviceTypeAndroid)), deviceTypeChromeOs: \(String(describing: deviceTypeChromeOs)), deviceTypeIos: \(String(describing: deviceTypeIos)), deviceTypeLinux: \(String(describing: deviceTypeLinux)), deviceTypeOsx: \(String(describing: deviceTypeOsx)), deviceTypeWeb: \(String(describing: deviceTypeWeb)), deviceTypeWindows: \(String(describing: deviceTypeWindows)), deviceTypeZeroClient: \(String(describing: deviceTypeZeroClient)))"}
}