// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetWorldTemplateBodyInput: Equatable {
    /// <p>The Amazon Resource Name (arn) of the world generator job.</p>
    public let generationJob: String?
    /// <p>The Amazon Resource Name (arn) of the world template.</p>
    public let template: String?

    public init (
        generationJob: String? = nil,
        template: String? = nil
    )
    {
        self.generationJob = generationJob
        self.template = template
    }
}

extension GetWorldTemplateBodyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetWorldTemplateBodyInput(generationJob: \(String(describing: generationJob)), template: \(String(describing: template)))"}
}