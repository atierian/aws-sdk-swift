// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The image format of a code signing platform or profile.</p>
public struct SigningImageFormat: Equatable {
    /// <p>The default format of a code signing image.</p>
    public let defaultFormat: ImageFormat?
    /// <p>The supported formats of a code signing image.</p>
    public let supportedFormats: [ImageFormat]?

    public init (
        defaultFormat: ImageFormat? = nil,
        supportedFormats: [ImageFormat]? = nil
    )
    {
        self.defaultFormat = defaultFormat
        self.supportedFormats = supportedFormats
    }
}

extension SigningImageFormat: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SigningImageFormat(defaultFormat: \(String(describing: defaultFormat)), supportedFormats: \(String(describing: supportedFormats)))"}
}