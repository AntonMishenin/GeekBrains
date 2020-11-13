import Foundation

struct Queue<T:Numeric> {
    private var elements: [T] = []
    
    mutating func dequeue() -> T? {
        guard !elements.isEmpty else {
            return nil
        }
        return elements.removeFirst()
    }
    
    mutating func enqueue(_ value: T) {
        elements.append(value)
    }
    
    func filter(_ value: T) -> [T] {
        return elements.filter { $0 == value }
    }
    
    subscript(index: Int) -> T? {
        guard !elements.isEmpty, index >= 0, index < elements.count else { return nil }
        return elements[index]
    }
}

var queueOfInteger = Queue<Int>()
queueOfInteger.enqueue(1)
queueOfInteger.enqueue(3)
queueOfInteger.enqueue(3)
queueOfInteger.enqueue(4)
queueOfInteger.enqueue(5)
queueOfInteger.enqueue(1)
queueOfInteger.filter(6)
queueOfInteger.filter(3)
queueOfInteger[1]
