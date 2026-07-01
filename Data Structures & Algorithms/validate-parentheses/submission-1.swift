class Solution {
    func isValid(_ s: String) -> Bool {
        let s = Array(s)
        var stack = Stack<Character>()

        for i in 0..<s.count {
            switch s[i] {
            case "(", "{", "[":
                stack.push(s[i])
            case ")":
                if stack.top() == "(" {
                    _ = stack.pop()
                } else {
                    return false
                }
            case "}":
                if stack.top() == "{" {
                    _ = stack.pop()
                } else {
                    return false
                }
            case "]":
                if stack.top() == "[" {
                    _ = stack.pop()
                } else {
                    return false
                }
            default: 
                break
            }
        }
        return stack.isEmpty()
    }
}

struct Stack<Element> {
    private var elements = [Element]()

    mutating func push(_ element: Element) {
        elements.append(element)
    }

    mutating func pop() -> Element? {
        return elements.isEmpty ? nil : elements.removeLast()
    }

    func top() -> Element? {
        return elements.isEmpty ? nil : elements.last!
    }


    func isEmpty() -> Bool {
        return elements.isEmpty
    }
}