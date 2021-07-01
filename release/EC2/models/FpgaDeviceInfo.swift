// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the FPGA accelerator for the instance type.</p>
public struct FpgaDeviceInfo: Equatable {
    /// <p>The count of FPGA accelerators for the instance type.</p>
    public let count: Int?
    /// <p>The manufacturer of the FPGA accelerator.</p>
    public let manufacturer: String?
    /// <p>Describes the memory for the FPGA accelerator for the instance type.</p>
    public let memoryInfo: FpgaDeviceMemoryInfo?
    /// <p>The name of the FPGA accelerator.</p>
    public let name: String?

    public init (
        count: Int? = nil,
        manufacturer: String? = nil,
        memoryInfo: FpgaDeviceMemoryInfo? = nil,
        name: String? = nil
    )
    {
        self.count = count
        self.manufacturer = manufacturer
        self.memoryInfo = memoryInfo
        self.name = name
    }
}

extension FpgaDeviceInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FpgaDeviceInfo(count: \(String(describing: count)), manufacturer: \(String(describing: manufacturer)), memoryInfo: \(String(describing: memoryInfo)), name: \(String(describing: name)))"}
}