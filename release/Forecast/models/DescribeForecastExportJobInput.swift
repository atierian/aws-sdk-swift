// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeForecastExportJobInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the forecast export job.</p>
    public let forecastExportJobArn: String?

    public init (
        forecastExportJobArn: String? = nil
    )
    {
        self.forecastExportJobArn = forecastExportJobArn
    }
}

extension DescribeForecastExportJobInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeForecastExportJobInput(forecastExportJobArn: \(String(describing: forecastExportJobArn)))"}
}