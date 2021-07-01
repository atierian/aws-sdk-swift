// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateServiceActionInput: Equatable {
    /// <p>The language code.</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>en</code> - English (default)</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>jp</code> - Japanese</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>zh</code> - Chinese</p>
    ///             </li>
    ///          </ul>
    public let acceptLanguage: String?
    /// <p>A map that defines the self-service action.</p>
    public let definition: [String:String]?
    /// <p>The self-service action description.</p>
    public let description: String?
    /// <p>The self-service action identifier.</p>
    public let id: String?
    /// <p>The self-service action name.</p>
    public let name: String?

    public init (
        acceptLanguage: String? = nil,
        definition: [String:String]? = nil,
        description: String? = nil,
        id: String? = nil,
        name: String? = nil
    )
    {
        self.acceptLanguage = acceptLanguage
        self.definition = definition
        self.description = description
        self.id = id
        self.name = name
    }
}

extension UpdateServiceActionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateServiceActionInput(acceptLanguage: \(String(describing: acceptLanguage)), definition: \(String(describing: definition)), description: \(String(describing: description)), id: \(String(describing: id)), name: \(String(describing: name)))"}
}