// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeFindingsInput: Equatable {
    /// <p>The ARN that specifies the finding that you want to describe.</p>
    public let findingArns: [String]?
    /// <p>The locale into which you want to translate a finding description, recommendation,
    ///          and the short description that identifies the finding.</p>
    public let locale: Locale?

    public init (
        findingArns: [String]? = nil,
        locale: Locale? = nil
    )
    {
        self.findingArns = findingArns
        self.locale = locale
    }
}

extension DescribeFindingsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeFindingsInput(findingArns: \(String(describing: findingArns)), locale: \(String(describing: locale)))"}
}