//
//  SLLStack.swift
//  SLLStack
//
//  Created by dudeinthemirror on 11/5/15.
//  Copyright © 2015 dudeinthemirror. All rights reserved.
//

import Foundation

// Singly linked list node
private final class SLLNode<T> {
    var data: T
    var next: SLLNode<T>?

    // Initialize a stand-alone node
    init (data: T) {
        self.data = data
        self.next = nil
    }

    // Initialize a node with a next node attached
    init (data: T, next: SLLNode<T>) {
        self.data = data
        self.next = next
    }
}

// Stack - singly linked list implementation
class SLLStack<T> {
    private var head: SLLNode<T>?
    var size: Int

    // Initialize an empty stack
    init () {
        size = 0
    }

    // Push a new node to the stack
    func push (data: T) {
        var newNode: SLLNode<T>
        if let head = self.head {
            newNode = SLLNode(data: data, next: head)
        } else {
            newNode = SLLNode(data: data)
        }
        self.head = newNode
        self.size++
    }

    // Pop the head node from the stack
    // Return the data in the head node
    func pop<T>() -> T? {
        if self.isEmpty() {
            return nil
        }
        let data = head!.data as? T
        self.head = head!.next
        self.size--

        return data
    }

    // Peeks at the head of the stack and returns the data
    // Return nil if the stack is empty
    func peek<T>() -> T?  {
        if self.isEmpty() {
            return nil
        }
        return head!.data as? T
    }
    
    // Prints the stack
    func printStack() -> String? {
        if self.isEmpty() {
            return nil
        }
        var stack = ""
        
        stack += "\(head!.data) (head)\n"
        
        var node = head
        
        while node!.next != nil {
            node = node!.next
            stack += "\(node!.data)\n"
        }
        print("\(stack)")
        return stack
    }

    //=============================================================================/
    // MARK: Helpers
    //=============================================================================/
    func isEmpty () -> Bool {
        return (self.size == 0) ? true: false
     }
}

//=============================================================================/
// MARK: Error handling
//=============================================================================/
enum StackError: ErrorType {
    case InconsistentState
}








