//
//  ViewController.swift
//  GrabtheCity
//
//  Created by Daniel Washington Ignacio on 23/06/21.
//

/*
 Write a function to return the city from each of these vacation spots.

 Examples

 grabCity("[Last Day!] Beer Festival [Munich]") ➞ "Munich"

 grabCity("Cheese Factory Tour [Portland]") ➞ "Portland"

 grabCity("[50% Off!][Group Tours Included] 5-Day Trip to Onsen [Kyoto]") ➞ "Kyoto"
 Notes

 There may be additional brackets, but the city will always be in the last bracket pair.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.grabCity("[Last Day!] Beer Festival [Munich]"))
        print(self.grabCity("Cheese Factory Tour [Portland]"))
        print(self.grabCity("[50% Off!][Group Tours Included] 5-Day Trip to Onsen [Kyoto]"))
    }
    func grabCity(_ str: String) -> String {
        var arr: [String] = []
        var newArr: [String] = []
        arr.append(String(str.split(separator: "[").last ??  ""))
        for n in arr{
            for m in n{
                newArr.append("\(m)")
            }
        }
        newArr.removeLast()
        return "\(newArr.joined())"
    }

}

