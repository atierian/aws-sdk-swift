// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct SearchAddressBooksOutputResponse: Equatable {
    /// <p>The address books that meet the specified set of filter criteria, in sort
    ///          order.</p>
    public let addressBooks: [AddressBookData]?
    /// <p>The token returned to indicate that there is more data available.</p>
    public let nextToken: String?
    /// <p>The total number of address books returned.</p>
    public let totalCount: Int?

    public init (
        addressBooks: [AddressBookData]? = nil,
        nextToken: String? = nil,
        totalCount: Int? = nil
    )
    {
        self.addressBooks = addressBooks
        self.nextToken = nextToken
        self.totalCount = totalCount
    }
}

extension SearchAddressBooksOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SearchAddressBooksOutputResponse(addressBooks: \(String(describing: addressBooks)), nextToken: \(String(describing: nextToken)), totalCount: \(String(describing: totalCount)))"}
}