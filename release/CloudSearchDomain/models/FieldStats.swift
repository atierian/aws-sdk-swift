// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The statistics for a field calculated in the request.</p>
public struct FieldStats: Equatable {
    /// <p>The number of documents that contain a value in the specified field in the result set.</p>
    public let count: Int
    /// <p>The maximum value found in the specified field in the result set.</p>
    ///        <p>If the field is numeric (<code>int</code>, <code>int-array</code>, <code>double</code>, or <code>double-array</code>), <code>max</code> is the string representation of a double-precision 64-bit floating point value. If the field is <code>date</code> or <code>date-array</code>, <code>max</code> is the string representation of a date with the format specified in <a href="http://tools.ietf.org/html/rfc3339">IETF RFC3339</a>: yyyy-mm-ddTHH:mm:ss.SSSZ.</p>
    public let max: String?
    /// <p>The average of the values found in the specified field in the result set.</p>
    ///        <p>If the field is numeric (<code>int</code>, <code>int-array</code>, <code>double</code>, or <code>double-array</code>), <code>mean</code> is the string representation of a double-precision 64-bit floating point value. If the field is <code>date</code> or <code>date-array</code>, <code>mean</code> is the string representation of a date with the format specified in <a href="http://tools.ietf.org/html/rfc3339">IETF RFC3339</a>: yyyy-mm-ddTHH:mm:ss.SSSZ.</p>
    public let mean: String?
    /// <p>The minimum value found in the specified field in the result set.</p>
    ///        <p>If the field is numeric (<code>int</code>, <code>int-array</code>, <code>double</code>, or <code>double-array</code>), <code>min</code> is the string representation of a double-precision 64-bit floating point value. If the field is <code>date</code> or <code>date-array</code>, <code>min</code> is the string representation of a date with the format specified in <a href="http://tools.ietf.org/html/rfc3339">IETF RFC3339</a>: yyyy-mm-ddTHH:mm:ss.SSSZ.</p>
    public let min: String?
    /// <p>The number of documents that do not contain a value in the specified field in the result set.</p>
    public let missing: Int
    /// <p>The standard deviation of the values in the specified field in the result set.</p>
    public let stddev: Double
    /// <p>The sum of the field values across the documents in the result set. <code>null</code> for date fields.</p>
    public let sum: Double
    /// <p>The sum of all field values in the result set squared.</p>
    public let sumOfSquares: Double

    public init (
        count: Int = 0,
        max: String? = nil,
        mean: String? = nil,
        min: String? = nil,
        missing: Int = 0,
        stddev: Double = 0.0,
        sum: Double = 0.0,
        sumOfSquares: Double = 0.0
    )
    {
        self.count = count
        self.max = max
        self.mean = mean
        self.min = min
        self.missing = missing
        self.stddev = stddev
        self.sum = sum
        self.sumOfSquares = sumOfSquares
    }
}

extension FieldStats: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FieldStats(count: \(String(describing: count)), max: \(String(describing: max)), mean: \(String(describing: mean)), min: \(String(describing: min)), missing: \(String(describing: missing)), stddev: \(String(describing: stddev)), sum: \(String(describing: sum)), sumOfSquares: \(String(describing: sumOfSquares)))"}
}