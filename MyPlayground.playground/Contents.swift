import Foundation

enum QueueErrors: Error{
    case queueIsEmpty
    case outOfRange
}

class Queue<T:Numeric> {
    private var elements: [T] = []
    
    func dequeue() throws -> T {
        guard !elements.isEmpty else {
            throw QueueErrors.queueIsEmpty
        }
        return elements.removeFirst()
    }
    
    func enqueue(_ value: T) {
        elements.append(value)
    }
    
    func filter(_ value: T) -> [T] {
        return elements.filter { $0 == value }
    }
    
    func get(_ index: Int) throws -> T {
        guard !elements.isEmpty, index >= 0, index < elements.count else { throw QueueErrors.outOfRange }
        guard !elements.isEmpty else { throw QueueErrors.queueIsEmpty }
        return elements[index]
    }
}

var queue = Queue<Int>()

do {
    try queue.dequeue()
} catch {
    print(error)
}

do {
    try queue.get(1)
} catch {
    print(error)
}

