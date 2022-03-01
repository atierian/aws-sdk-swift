// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS IoT Secure Tunneling AWS IoT Secure Tunnling enables you to create remote connections to devices deployed in the field. For more information about how AWS IoT Secure Tunneling works, see [AWS IoT Secure Tunneling](https://docs.aws.amazon.com/iot/latest/developerguide/secure-tunneling.html).
public protocol IoTSecureTunnelingClientProtocol {
    /// Closes a tunnel identified by the unique tunnel id. When a CloseTunnel request is received, we close the WebSocket connections between the client and proxy server so no data can be transmitted.
    func closeTunnel(input: CloseTunnelInput) async throws -> CloseTunnelOutputResponse
    /// Gets information about a tunnel identified by the unique tunnel id.
    func describeTunnel(input: DescribeTunnelInput) async throws -> DescribeTunnelOutputResponse
    /// Lists the tags for the specified resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// List all tunnels for an AWS account. Tunnels are listed by creation time in descending order, newer tunnels will be listed before older tunnels.
    func listTunnels(input: ListTunnelsInput) async throws -> ListTunnelsOutputResponse
    /// Creates a new tunnel, and returns two client access tokens for clients to use to connect to the AWS IoT Secure Tunneling proxy server.
    func openTunnel(input: OpenTunnelInput) async throws -> OpenTunnelOutputResponse
    /// A resource tag.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes a tag from a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
}

public enum IoTSecureTunnelingClientTypes {}