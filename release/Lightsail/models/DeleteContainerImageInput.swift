// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteContainerImageInput: Equatable {
    /// <p>The name of the container image to delete from the container service.</p>
    ///
    ///          <p>Use the <code>GetContainerImages</code> action to get the name of the container images
    ///       that are registered to a container service.</p>
    ///
    ///          <note>
    ///             <p>Container images sourced from your Lightsail container service, that are registered
    ///         and stored on your service, start with a colon (<code>:</code>). For example,
    ///           <code>:container-service-1.mystaticwebsite.1</code>. Container images sourced from a
    ///         public registry like Docker Hub don't start with a colon. For example,
    ///           <code>nginx:latest</code> or <code>nginx</code>.</p>
    ///          </note>
    public let image: String?
    /// <p>The name of the container service for which to delete a registered container image.</p>
    public let serviceName: String?

    public init (
        image: String? = nil,
        serviceName: String? = nil
    )
    {
        self.image = image
        self.serviceName = serviceName
    }
}

extension DeleteContainerImageInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteContainerImageInput(image: \(String(describing: image)), serviceName: \(String(describing: serviceName)))"}
}