// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CancelImportTaskOutputResponse: Equatable {
    /// <p>The ID of the task being canceled.</p>
    public let importTaskId: String?
    /// <p>The current state of the task being canceled.</p>
    public let previousState: String?
    /// <p>The current state of the task being canceled.</p>
    public let state: String?

    public init (
        importTaskId: String? = nil,
        previousState: String? = nil,
        state: String? = nil
    )
    {
        self.importTaskId = importTaskId
        self.previousState = previousState
        self.state = state
    }
}

extension CancelImportTaskOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CancelImportTaskOutputResponse(importTaskId: \(String(describing: importTaskId)), previousState: \(String(describing: previousState)), state: \(String(describing: state)))"}
}