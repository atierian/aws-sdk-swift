// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>An AWS Firewall Manager applications list.</p>
public struct AppsListData: Equatable {
    /// <p>An array of applications in the AWS Firewall Manager applications list.</p>
    public let appsList: [App]?
    /// <p>The time that the AWS Firewall Manager applications list was created.</p>
    public let createTime: Date?
    /// <p>The time that the AWS Firewall Manager applications list was last updated.</p>
    public let lastUpdateTime: Date?
    /// <p>The ID of the AWS Firewall Manager applications list.</p>
    public let listId: String?
    /// <p>The name of the AWS Firewall Manager applications list.</p>
    public let listName: String?
    /// <p>A unique identifier for each update to the list. When you update
    ///         the list, the update token must match the token of the current version of the application list.
    ///         You can retrieve the update token by getting the list. </p>
    public let listUpdateToken: String?
    /// <p>A map of previous version numbers to their corresponding <code>App</code> object arrays.</p>
    public let previousAppsList: [String:[App]]?

    public init (
        appsList: [App]? = nil,
        createTime: Date? = nil,
        lastUpdateTime: Date? = nil,
        listId: String? = nil,
        listName: String? = nil,
        listUpdateToken: String? = nil,
        previousAppsList: [String:[App]]? = nil
    )
    {
        self.appsList = appsList
        self.createTime = createTime
        self.lastUpdateTime = lastUpdateTime
        self.listId = listId
        self.listName = listName
        self.listUpdateToken = listUpdateToken
        self.previousAppsList = previousAppsList
    }
}

extension AppsListData: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AppsListData(appsList: \(String(describing: appsList)), createTime: \(String(describing: createTime)), lastUpdateTime: \(String(describing: lastUpdateTime)), listId: \(String(describing: listId)), listName: \(String(describing: listName)), listUpdateToken: \(String(describing: listUpdateToken)), previousAppsList: \(String(describing: previousAppsList)))"}
}