// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>This data type contains information about progress of an operation.</p>
public struct Progress: Equatable {
    /// <p>The current number of uncompressed object bytes processed.</p>
    public let bytesProcessed: Int
    /// <p>The current number of bytes of records payload data returned.</p>
    public let bytesReturned: Int
    /// <p>The current number of object bytes scanned.</p>
    public let bytesScanned: Int

    public init (
        bytesProcessed: Int = 0,
        bytesReturned: Int = 0,
        bytesScanned: Int = 0
    )
    {
        self.bytesProcessed = bytesProcessed
        self.bytesReturned = bytesReturned
        self.bytesScanned = bytesScanned
    }
}

extension Progress: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Progress(bytesProcessed: \(String(describing: bytesProcessed)), bytesReturned: \(String(describing: bytesReturned)), bytesScanned: \(String(describing: bytesScanned)))"}
}