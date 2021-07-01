// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains an asset property value (of a single type).</p>
public enum AssetPropertyVariant: Equatable, Hashable {
    /// <p>Optional. The string value of the value entry. Accepts substitution templates.</p>
    case stringValue(String?)
    /// <p>Optional. A string that contains the integer value of the value entry. Accepts
    ///       substitution templates.</p>
    case integerValue(String?)
    /// <p>Optional. A string that contains the double value of the value entry. Accepts substitution
    ///       templates.</p>
    case doubleValue(String?)
    /// <p>Optional. A string that contains the boolean value (<code>true</code> or
    ///         <code>false</code>) of the value entry. Accepts substitution templates.</p>
    case booleanValue(String?)
    case sdkUnknown(String?)
}