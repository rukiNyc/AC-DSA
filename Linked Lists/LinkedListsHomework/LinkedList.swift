//
//  LinkedList.swift
//  LinkedListsHomework
//
//  Created by C4Q  on 10/24/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

class Node<T> {
    var key: T!             //key means value!!!
    var next: Node?
}

class LinkedList<T: Equatable> {                              //my list equatble = value param
    
    var head  = Node<T>()
    var temp  = Node<T>()//another node
    
    func printAllKeys() {                                  //print all values in nodes if they have any
        let current = self.head
        while ( current.key != nil && current.next != nil){
            print(current.key)
        }
    }
    
    var count: Int {   // Assume Counting al nodes without considering if value is exist
        var current = self.head
        var count = 1
        
        while (current.next != nil){
            count += 1
            current = current.next!
        }
        return count}

    
    func append(element newKey: T) {                    //append last
        var temp = self.head
        let newNode = Node<T>()
        
        
        while temp.next != nil {
            temp = temp.next!
        }
        temp.next = newNode
        newNode.key = newKey
        
    }
    
    func getElement(at Index: Int) -> Node<T>? {/*
        
        while temp.next != nil {
            if temp.next == trackNode{                  How to compare it says No binary operator
                trackNode = temp.next
            }}*/
        
        var count = 1
        var temp = self.head
        
        
        while temp.next != nil {
            
            if count == Index{
                return temp.key as! Node<T>?
            }
            count += 1
            temp = temp.next!                               //why ! here but not above
        }
        return nil
    }
    
    
    func insert(_ key: T, at index: Int) {
        
//        var count = 1
//        
//        var current = self.head
//        var previous = Node<T>()
//        
//        
//        let newNode = Node<T>()                 //Create new node with value
//        newNode.key = key
//        
//        while current.next != nil {             //start traverse
//            
//            if count == index{                  //find index
//                previous = current.next!
//                
//                if ( previous.next == nil){
//                    
//                    head = newNode
//                    newNode.next = current
//                }
//                else{
//                    previous.next = newNode
//                    newNode.next = current }
//            }
//            count += 1
//            current = current.next!
//        }
    }
    
    
    func contains(element targetKey: T) -> Bool {
        
        var temp = self.head
       
        while temp.next != nil && temp.key != nil{
            if temp.key == targetKey {
              return true
            }
            temp = temp.next!
        }
        return false
    }
    
    
    
    func remove(at index: Int) {
        var count = 1
        var previous = Node<T>()
        var current = self.head
        
        
        while temp.next != nil && current.key != nil {
            
            if count == index{
                previous.next = current.next!
                current = previous.next!
                }
            else{
                previous = current
            }
            current = current.next!                               
            count += 1
        }
       
    
    
    }
}


