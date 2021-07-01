// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ModifyVolumeInput: Equatable {
    /// <p>Checks whether you have the required permissions for the action, without actually making the request,
    ///    and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>.
    ///    Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    public let dryRun: Bool
    /// <p>The target IOPS rate of the volume. This parameter is valid only for <code>gp3</code>, <code>io1</code>, and <code>io2</code> volumes.</p>
    ///          <p>The following are the supported values for each volume type:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>gp3</code>: 3,000-16,000 IOPS</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>io1</code>: 100-64,000 IOPS</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>io2</code>: 100-64,000 IOPS</p>
    ///             </li>
    ///          </ul>
    ///          <p>Default: If no IOPS value is specified, the existing value is retained, unless a volume type is modified that supports different values.</p>
    public let iops: Int
    /// <p>Specifies whether to enable Amazon EBS Multi-Attach. If you enable Multi-Attach, you can attach the
    /// 		volume to up to 16 <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances">
    /// 			Nitro-based instances</a> in the same Availability Zone. This parameter is
    /// 		supported with <code>io1</code> and <code>io2</code> volumes only. For more information, see
    /// 		<a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volumes-multi.html">
    /// 			Amazon EBS Multi-Attach</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    public let multiAttachEnabled: Bool
    /// <p>The target size of the volume, in GiB. The target volume size must be greater than or
    ///       equal to the existing size of the volume.</p>
    ///          <p>The following are the supported volumes sizes for each volume type:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>gp2</code> and <code>gp3</code>: 1-16,384</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>io1</code> and <code>io2</code>: 4-16,384</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>st1</code> and <code>sc1</code>: 125-16,384</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>standard</code>: 1-1,024</p>
    ///             </li>
    ///          </ul>
    ///          <p>Default: If no size is specified, the existing size is retained.</p>
    public let size: Int
    /// <p>The target throughput of the volume, in MiB/s. This parameter is valid only for <code>gp3</code> volumes.
    ///       The maximum value is 1,000.</p>
    ///          <p>Default: If no throughput value is specified, the existing value is retained.</p>
    ///   	      <p>Valid Range: Minimum value of 125. Maximum value of 1000.</p>
    public let throughput: Int
    /// <p>The ID of the volume.</p>
    public let volumeId: String?
    /// <p>The target EBS volume type of the volume. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html">Amazon EBS volume types</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
    ///          <p>Default: If no type is specified, the existing type is retained.</p>
    public let volumeType: VolumeType?

    public init (
        dryRun: Bool = false,
        iops: Int = 0,
        multiAttachEnabled: Bool = false,
        size: Int = 0,
        throughput: Int = 0,
        volumeId: String? = nil,
        volumeType: VolumeType? = nil
    )
    {
        self.dryRun = dryRun
        self.iops = iops
        self.multiAttachEnabled = multiAttachEnabled
        self.size = size
        self.throughput = throughput
        self.volumeId = volumeId
        self.volumeType = volumeType
    }
}

extension ModifyVolumeInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ModifyVolumeInput(dryRun: \(String(describing: dryRun)), iops: \(String(describing: iops)), multiAttachEnabled: \(String(describing: multiAttachEnabled)), size: \(String(describing: size)), throughput: \(String(describing: throughput)), volumeId: \(String(describing: volumeId)), volumeType: \(String(describing: volumeType)))"}
}