//
//  Combinations.swift
//  AlgorithmDaily0804
//
//  Created by felix on 16/8/4.
//  Copyright © 2016年 felix. All rights reserved.
//

import UIKit

class Combinations: NSObject {
  
    func combine(n: Int, k: Int) -> [[Int]] {
        var resultArr = [[Int]]()
        var pathArr = [Int]()
        let nums = _init(n)
        
        _obtainCombinations(nums, &resultArr, &pathArr, 0, k)
        
        return resultArr;
    }
    
    private func _init(n: Int) -> [Int] {
        var res = [Int]()
        
        for i in 1...n {
            res.append(i)
        }
        
        return res
    }
    
    private func _obtainCombinations(nums: [Int], inout _ result: [[Int]], inout _ path: [Int], _ index: Int, _ k: Int) {
        if path.count == k {
            result.append([Int](path))
            return
        }
        
        for i in index ..< nums.count {
            path.append(nums[i])
            _obtainCombinations(nums, &result, &path, i + 1, k)
            path.removeLast()
        }
    }
}
