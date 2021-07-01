// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PutSessionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if let activeContextsHeaderValue = httpResponse.headers.value(for: "x-amz-lex-active-contexts") {
            self.activeContexts = try activeContextsHeaderValue.base64DecodedString()
        } else {
            self.activeContexts = nil
        }
        if let contentTypeHeaderValue = httpResponse.headers.value(for: "Content-Type") {
            self.contentType = contentTypeHeaderValue
        } else {
            self.contentType = nil
        }
        if let dialogStateHeaderValue = httpResponse.headers.value(for: "x-amz-lex-dialog-state") {
            self.dialogState = DialogState(rawValue: dialogStateHeaderValue)
        } else {
            self.dialogState = nil
        }
        if let encodedMessageHeaderValue = httpResponse.headers.value(for: "x-amz-lex-encoded-message") {
            self.encodedMessage = encodedMessageHeaderValue
        } else {
            self.encodedMessage = nil
        }
        if let intentNameHeaderValue = httpResponse.headers.value(for: "x-amz-lex-intent-name") {
            self.intentName = intentNameHeaderValue
        } else {
            self.intentName = nil
        }
        if let messageHeaderValue = httpResponse.headers.value(for: "x-amz-lex-message") {
            self.message = messageHeaderValue
        } else {
            self.message = nil
        }
        if let messageFormatHeaderValue = httpResponse.headers.value(for: "x-amz-lex-message-format") {
            self.messageFormat = MessageFormatType(rawValue: messageFormatHeaderValue)
        } else {
            self.messageFormat = nil
        }
        if let sessionAttributesHeaderValue = httpResponse.headers.value(for: "x-amz-lex-session-attributes") {
            self.sessionAttributes = try sessionAttributesHeaderValue.base64DecodedString()
        } else {
            self.sessionAttributes = nil
        }
        if let sessionIdHeaderValue = httpResponse.headers.value(for: "x-amz-lex-session-id") {
            self.sessionId = sessionIdHeaderValue
        } else {
            self.sessionId = nil
        }
        if let slotToElicitHeaderValue = httpResponse.headers.value(for: "x-amz-lex-slot-to-elicit") {
            self.slotToElicit = slotToElicitHeaderValue
        } else {
            self.slotToElicit = nil
        }
        if let slotsHeaderValue = httpResponse.headers.value(for: "x-amz-lex-slots") {
            self.slots = try slotsHeaderValue.base64DecodedString()
        } else {
            self.slots = nil
        }
        if case .data(let data) = httpResponse.body,
           let unwrappedData = data {
            self.audioStream = unwrappedData
        } else {
            self.audioStream = nil
        }
    }
}