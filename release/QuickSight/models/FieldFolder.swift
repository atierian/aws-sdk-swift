// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A FieldFolder element is a folder that contains fields and nested subfolders.</p>
public struct FieldFolder: Equatable {
    /// <p>A folder has a list of columns. A column can only be in one folder.</p>
    public let columns: [String]?
    /// <p>The description for a field folder.</p>
    public let description: String?

    public init (
        columns: [String]? = nil,
        description: String? = nil
    )
    {
        self.columns = columns
        self.description = description
    }
}

extension FieldFolder: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FieldFolder(columns: \(String(describing: columns)), description: \(String(describing: description)))"}
}