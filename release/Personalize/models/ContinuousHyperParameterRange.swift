// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides the name and range of a continuous hyperparameter.</p>
public struct ContinuousHyperParameterRange: Equatable {
    /// <p>The maximum allowable value for the hyperparameter.</p>
    public let maxValue: Double
    /// <p>The minimum allowable value for the hyperparameter.</p>
    public let minValue: Double
    /// <p>The name of the hyperparameter.</p>
    public let name: String?

    public init (
        maxValue: Double = 0.0,
        minValue: Double = 0.0,
        name: String? = nil
    )
    {
        self.maxValue = maxValue
        self.minValue = minValue
        self.name = name
    }
}

extension ContinuousHyperParameterRange: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ContinuousHyperParameterRange(maxValue: \(String(describing: maxValue)), minValue: \(String(describing: minValue)), name: \(String(describing: name)))"}
}