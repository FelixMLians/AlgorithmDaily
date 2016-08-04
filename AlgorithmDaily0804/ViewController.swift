//
//  ViewController.swift
//  AlgorithmDaily0804
//
//  Created by felix on 16/8/4.
//  Copyright © 2016年 felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    // MARK: - Combinations
    func myCombinations() -> () {
        let com = Combinations();
        let res = com.combine(5, k: 3);
        print(res)
    }
    
    // MARK: - removeDuplicatesFromSortedList
    func removeDuplicatesFromSortedList() -> () {
        let arr = [1, 2, 2, 3, 3, 4]
        
        let head: ListNode = ListNode.init(_val: 1)
        
        var beforeTemp: ListNode = head
        
        for i in arr {
            print("before \(beforeTemp.val)")
            beforeTemp.next = ListNode.init(_val: i)
            beforeTemp = beforeTemp.next!
            
        }
        let resultListNode = deleteDuplicates(head);
        
        var afterTemp: ListNode = resultListNode!
        while afterTemp.next != nil {
            print("after \(afterTemp.val)")
            afterTemp = afterTemp.next!
        }
    }
    
    func deleteDuplicates(head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head;
        }
        
        var pre = head
        var pres = head!.next
        while pres != nil {
            if pre!.val == pres!.val {
                pres = pres!.next
                pre!.next = pres
            }
            else {
                pre = pres
                pres = pres!.next
            }
        }
        return head;
    }
}

// definition
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_val: Int) {
        self.val = _val;
        self.next = nil;
    }
}
