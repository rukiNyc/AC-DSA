//
//  LinkedList.swift
//  LinkedListsHomework
//
//  Created by C4Q  on 10/24/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

class Node<T> {
    var key: T!
    var next: Node?
   // var previous: Node?
    //var temp:Node?
    
}

class LinkedList<T: Equatable> {
    let head = Node<T>()
    var current = Node<T>()                //this si not optional and wont work for last key->next =nil
    
    func printAllKeys() {
        while (current.next != nil){
            print(current.key)
            current = current.next!
        }
    print(current.key)
    }
    
        
    var count: Int {
        
        var current = self.head
        var count = 1
        
        while (current.next != nil){
            count += 1
            current = current.next!
        }
        return count
    }

    
    func append(element newKey: T) {                    //append last
        
        // check  head
        if head.key == nil && head.next == nil{
            head.key = newKey
        
        } else{
        var current = self.head
        
        while current.next != nil {
            current = current.next!
        }
        let newNode = Node<T>()
        current.next = newNode
        newNode.key = newKey
        
        }
    }
    
    func getElement(at Index: Int) -> Node<T>? {
        
        var count = 1
        var current = self.head
        
        // check  head
        if head.next == nil{
//            let newNode = Node<T>()
//            current.next = newNode
            
        return nil
            
        } else{
            
            while current.next != nil {
                
                if count == Index{
                    return current.key as! Node<T>?
                }
                count += 1
                current = current.next!                               //why ! here but not above
            }
        }
        return nil

    }
//
//
    func insert(_ key: T, at index: Int) {
        
        var count = 0
        var current = self.head
        var previous = Node<T>()
        
        while current.next != nil {
            
            if count == index{
                previous = current
                let newNode = Node<T>()                 
                newNode.key = key
                
                current.next = newNode
                
            }
            count += 1
            current = current.next!
        }
       
    }
    
    
    
//    func contains(element targetKey: T) -> Bool {
//        
//        var temp = self.head
//       
//        while temp.next != nil && temp.key != nil{
//            if temp.key == targetKey {
//              return true
//            }
//            if let next = temp.next {
//                temp = temp.next!
//            }
//        }
//        
//        return false
//    }
//
//    
//    
//    func remove(at index: Int) {
//        var count = 1
//        var previous = Node<T>()
//        var current = self.head
//        
//        
////        while temp.next != nil && current.key != nil {
////            
////            if count == index{
////                previous.next = current.next!
////                current = previous.next!
////                }
////            else{
////                previous = current
////            }
////            current = current.next!
////            count += 1
////        }
////       
//    
//    
//    }
}


