// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the state of the bitstream generation process for an Amazon FPGA image (AFI).</p>
public struct FpgaImageState: Equatable {
    /// <p>The state. The following are the possible values:</p>
    /// 		       <ul>
    ///             <li>
    ///                <p>
    ///                   <code>pending</code> - AFI bitstream generation is in progress.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>available</code> - The AFI is available for use.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>failed</code> - AFI bitstream generation failed.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>unavailable</code> - The AFI is no longer available for use.</p>
    ///             </li>
    ///          </ul>
    public let code: FpgaImageStateCode?
    /// <p>If the state is <code>failed</code>, this is the error message.</p>
    public let message: String?

    public init (
        code: FpgaImageStateCode? = nil,
        message: String? = nil
    )
    {
        self.code = code
        self.message = message
    }
}

extension FpgaImageState: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FpgaImageState(code: \(String(describing: code)), message: \(String(describing: message)))"}
}