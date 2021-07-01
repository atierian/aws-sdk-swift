// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the parameters needed for you to provide custom input to a target based on one or
///       more pieces of data extracted from the event.</p>
public struct InputTransformer: Equatable {
    /// <p>Map of JSON paths to be extracted from the event. You can then insert these in the
    ///       template in <code>InputTemplate</code> to produce the output you want to be sent to the
    ///       target.</p>
    ///          <p>
    ///             <code>InputPathsMap</code> is an array key-value pairs, where each value is a valid JSON
    ///       path. You can have as many as 100 key-value pairs. You must use JSON dot notation, not bracket
    ///       notation.</p>
    ///          <p>The keys cannot start with "AWS." </p>
    public let inputPathsMap: [String:String]?
    /// <p>Input template where you specify placeholders that will be filled with the values of the
    ///       keys from <code>InputPathsMap</code> to customize the data sent to the target. Enclose each
    ///         <code>InputPathsMaps</code> value in brackets: <<i>value</i>> The
    ///       InputTemplate must be valid JSON.</p>
    ///
    ///          <p>If <code>InputTemplate</code> is a JSON object (surrounded by curly braces), the following
    ///       restrictions apply:</p>
    ///          <ul>
    ///             <li>
    ///                <p>The placeholder cannot be used as an object key.</p>
    ///             </li>
    ///          </ul>
    ///          <p>The following example shows the syntax for using <code>InputPathsMap</code> and
    ///         <code>InputTemplate</code>.</p>
    ///          <p>
    ///             <code> "InputTransformer":</code>
    ///          </p>
    ///          <p>
    ///             <code>{</code>
    ///          </p>
    ///          <p>
    ///             <code>"InputPathsMap": {"instance": "$.detail.instance","status":
    ///         "$.detail.status"},</code>
    ///          </p>
    ///          <p>
    ///             <code>"InputTemplate": "<instance> is in state <status>"</code>
    ///          </p>
    ///          <p>
    ///             <code>}</code>
    ///          </p>
    ///          <p>To have the <code>InputTemplate</code> include quote marks within a JSON string, escape
    ///       each quote marks with a slash, as in the following example:</p>
    ///          <p>
    ///             <code> "InputTransformer":</code>
    ///          </p>
    ///          <p>
    ///             <code>{</code>
    ///          </p>
    ///          <p>
    ///             <code>"InputPathsMap": {"instance": "$.detail.instance","status":
    ///         "$.detail.status"},</code>
    ///          </p>
    ///          <p>
    ///             <code>"InputTemplate": "<instance> is in state \"<status>\""</code>
    ///          </p>
    ///          <p>
    ///             <code>}</code>
    ///          </p>
    ///          <p>The <code>InputTemplate</code> can also be valid JSON with varibles in quotes or out,
    ///       as in the following example:</p>
    ///          <p>
    ///             <code> "InputTransformer":</code>
    ///          </p>
    ///          <p>
    ///             <code>{</code>
    ///          </p>
    ///          <p>
    ///             <code>"InputPathsMap": {"instance": "$.detail.instance","status":
    ///         "$.detail.status"},</code>
    ///          </p>
    ///          <p>
    ///             <code>"InputTemplate": '{"myInstance": <instance>,"myStatus":
    ///         "<instance> is in state \"<status>\""}'</code>
    ///          </p>
    ///          <p>
    ///             <code>}</code>
    ///          </p>
    public let inputTemplate: String?

    public init (
        inputPathsMap: [String:String]? = nil,
        inputTemplate: String? = nil
    )
    {
        self.inputPathsMap = inputPathsMap
        self.inputTemplate = inputTemplate
    }
}

extension InputTransformer: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InputTransformer(inputPathsMap: \(String(describing: inputPathsMap)), inputTemplate: \(String(describing: inputTemplate)))"}
}