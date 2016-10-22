enum ProjectTokenType {
    case value
    case assign
    case space
    case deliminator
    case comment
    case openingCurlyBrace
    case closingCurlyBrace
    case openingParentheses
    case closingParentheses
    case comma
}

struct ProjectToken {
    let type: ProjectTokenType
    let value: String
    let startIndex: Int
    let endIndex: Int
}

extension ProjectToken: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        return "[\(type)]:\(value)@\(startIndex)-\(endIndex)"
    }
    public var debugDescription: String {
        return "[\(type)]:\(value)@\(startIndex)-\(endIndex)"
    }
}
