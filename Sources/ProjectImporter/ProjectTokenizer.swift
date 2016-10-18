import Foundation

struct ProjectTokenizer {
    static func tokenize(at filepath: String) -> [ProjectToken] {
        let url = URL(fileURLWithPath: filepath)
        return tokenize(url)
    }
    
    static func tokenize(_ url: URL) -> [ProjectToken] {
        guard let string = try? String(contentsOf: url) else {
            return []
        }
        return tokenize(string)
    }
    
    static func tokenize(_ string: String) -> [ProjectToken] {
        return tokenize(string, from: 0)
    }
    
    private static func tokenize(_ string: String, from startIndex: Int) -> [ProjectToken] {
        print("Total: \(string.characters.count)")
        
        var results = [ProjectToken]()
        while true {
            let startIndex = results.isEmpty ? 0 : (results.last?.endIndex ?? 0)
            guard let token = string.nextToken(startIndex) else {
                break
            }
            print(token)
            results.append(token)
        }
        return results
    }
}

private extension String {
    func nextToken(_ index: Int) -> ProjectToken? {
        guard index < characters.count else {
            return nil
        }
        
        let start = self.index(startIndex, offsetBy: index)
        let character = String(self[start])
        switch character {
        case "=":
            return ProjectToken(type: .assign, value: character, startIndex: index, endIndex: index + 1)
        case ";":
            return ProjectToken(type: .deliminator, value: character, startIndex: index, endIndex: index + 1)
        case "{":
            return ProjectToken(type: .openingCurlyBrace, value: character, startIndex: index, endIndex: index + 1)
        case "}":
            return ProjectToken(type: .closingCurlyBrace, value: character, startIndex: index, endIndex: index + 1)
        case " ", "\t", "\r", "\n":
            for endIndex in (index+1)..<characters.count {
                let startNext = self.index(startIndex, offsetBy: endIndex)
                let nextCharacter = self[startNext]
                switch nextCharacter {
                case " ", "\t", "\r", "\n":
                    break
                default:
                    let str = substring(with: Range(uncheckedBounds: (start, startNext)))
                    return ProjectToken(type: .space, value: str, startIndex: index, endIndex: endIndex)
                }
            }
        case "/":
            let end = self.index(start, offsetBy: 2)
            let character = substring(with: Range(uncheckedBounds: (start, end)))
            if character == "/*" {
                for endIndex in (index+2)..<(characters.count-1) {
                    let startNext = self.index(startIndex, offsetBy: endIndex)
                    let endNext = self.index(startNext, offsetBy: 2)
                    let nextCharacter = substring(with: Range(uncheckedBounds: (startNext, endNext)))
                    if nextCharacter == "*/" {
                        let str = substring(with: Range(uncheckedBounds: (start, endNext)))
                        return ProjectToken(type: .comment, value: str, startIndex: index, endIndex: endIndex + 2)
                    }
                }
                fatalError("Comment is not closed.")
            } else if character == "//" {
                for endIndex in (index+2)..<characters.count {
                    let startNext = self.index(startIndex, offsetBy: endIndex)
                    let nextCharacter = self[startNext]
                    switch nextCharacter {
                    case "\r", "\n":
                        let endNext = self.index(startNext, offsetBy: 1)
                        let str = substring(with: Range(uncheckedBounds: (start, endNext)))
                        return ProjectToken(type: .comment, value: str, startIndex: index, endIndex: endIndex)
                    default:
                        break
                    }
                }
                let str = substring(with: Range(uncheckedBounds: (start, endIndex)))
                return ProjectToken(type: .comment, value: str, startIndex: index, endIndex: characters.count)
            }
        case "0"..."9":
            for endIndex in (index+1)..<characters.count {
                let startNext = self.index(startIndex, offsetBy: endIndex)
                let nextCharacter = self[startNext]
                switch nextCharacter {
                case "0"..."9":
                    break
                default:
                    let str = substring(with: Range(uncheckedBounds: (start, startNext)))
                    return ProjectToken(type: .value, value: str, startIndex: index, endIndex: endIndex)
                }
            }
            let str = substring(with: Range(uncheckedBounds: (start, endIndex)))
            return ProjectToken(type: .value, value: str, startIndex: index, endIndex: characters.count)
        case "\"":
            var previousIsBackSlash = false
            for endIndex in (index+1)..<characters.count {
                let startNext = self.index(startIndex, offsetBy: endIndex)
                let nextCharacter = self[startNext]
                switch nextCharacter {
                case "\\":
                    previousIsBackSlash = true
                case let x where x == "\"" && !previousIsBackSlash:
                    let endNext = self.index(startNext, offsetBy: 1)
                    let str = substring(with: Range(uncheckedBounds: (start, endNext)))
                    return ProjectToken(type: .value, value: str, startIndex: index, endIndex: endIndex + 1)
                default:
                    previousIsBackSlash = false
                }
            }
            fatalError("\" is not closed.")
        default:
            for endIndex in (index+1)..<characters.count {
                let startNext = self.index(startIndex, offsetBy: endIndex)
                let nextCharacter = self[startNext]
                switch nextCharacter {
                case " ", "\t", "\r", "\n", ";":
                    let str = substring(with: Range(uncheckedBounds: (start, startNext)))
                    return ProjectToken(type: .value, value: str, startIndex: index, endIndex: endIndex)
                default:
                    break
                }
            }
            let str = substring(with: Range(uncheckedBounds: (start, endIndex)))
            return ProjectToken(type: .value, value: str, startIndex: index, endIndex: characters.count)
        }
        return nil
    }
}
