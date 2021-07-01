// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <note>
///             <p>This is <b>AWS WAF Classic</b> documentation. For
///       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
///       WAF Classic</a> in the developer guide.</p>
///             <p>
///                <b>For the latest version of AWS
///       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
///          </note>
/// 		       <p>Specifies the part of a web request that you want to inspect for cross-site scripting attacks and indicates whether you want to
/// 			add the specification to an <a>XssMatchSet</a> or delete it from an <code>XssMatchSet</code>.</p>
public struct XssMatchSetUpdate: Equatable {
    /// <p>Specify <code>INSERT</code> to add an
    ///          <a>XssMatchSetUpdate</a> to an <a>XssMatchSet</a>. Use
    ///             <code>DELETE</code> to remove an
    ///          <code>XssMatchSetUpdate</code> from an <code>XssMatchSet</code>.</p>
    public let action: ChangeAction?
    /// <p>Specifies the part of a web request that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header.</p>
    public let xssMatchTuple: XssMatchTuple?

    public init (
        action: ChangeAction? = nil,
        xssMatchTuple: XssMatchTuple? = nil
    )
    {
        self.action = action
        self.xssMatchTuple = xssMatchTuple
    }
}

extension XssMatchSetUpdate: CustomDebugStringConvertible {
    public var debugDescription: String {
        "XssMatchSetUpdate(action: \(String(describing: action)), xssMatchTuple: \(String(describing: xssMatchTuple)))"}
}