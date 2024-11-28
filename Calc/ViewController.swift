//
//  ViewController.swift
//  Calc
//
//  Created by Bduidan on 28.11.2024.
//

import UIKit

//var expression: String = "";

func evaluate(expression: String) -> Double? {
    let exp = NSExpression(format: expression)
    return exp.expressionValue(with: nil, context: nil) as? Double
}

class ViewController: UIViewController {
    @IBOutlet weak var btn_9: UIButton!
    @IBOutlet weak var btn_8: UIButton!
    @IBOutlet weak var btn_7: UIButton!
    @IBOutlet weak var btn_6: UIButton!
    @IBOutlet weak var btn_5: UIButton!
    @IBOutlet weak var btn_4: UIButton!
    @IBOutlet weak var btn_3: UIButton!
    @IBOutlet weak var btn_2: UIButton!
    @IBOutlet weak var btn_1: UIButton!
    @IBOutlet weak var btn_0: UIButton!
    @IBOutlet weak var btn_plus: UIButton!
    @IBOutlet weak var btn_dot: UIButton!
    @IBOutlet weak var btn_clear: UIButton!
    @IBOutlet weak var btn_del: UIButton!
    @IBOutlet weak var btn_multiply: UIButton!
    @IBOutlet weak var btn_open_bracket: UIButton!
    @IBOutlet weak var btn_close_bracket: UIButton!
    @IBOutlet weak var btn_division: UIButton!
    @IBOutlet weak var btn_minus: UIButton!
    @IBOutlet weak var res_text: UILabel!
    @IBOutlet weak var btn_res: UIButton!
    
    @IBAction func btn_res_act(_ sender: Any) {
        if let result = evaluate(expression: expression) {
                    expression = "\(result)"
                    res_text.text = expression
                } else {
                    res_text.text = "Fatal Error"
                }
    }
    @IBAction func btn_open_bracket_act(_ sender: Any) {
        expression += "("
        res_text.text = expression
    }
    @IBAction func btn_close_bracket_act(_ sender: Any) {
        expression += ")"
        res_text.text = expression
    }
    @IBAction func btn_minus_act(_ sender: Any) {
        expression += "-"
        res_text.text = expression
    }
    @IBAction func btn_dot_act(_ sender: Any) {
        expression += "."
        res_text.text = expression
    }
    @IBAction func btn_del_act(_ sender: Any) {
        if !expression.isEmpty {
                expression = String(expression.dropLast()
            }
    }
    @IBAction func btn_division_act(_ sender: Any) {
        expression += "/"
        res_text.text = expression
    }
    @IBAction func btn_clear_act(_ sender: Any) {
        expression = ""
        res_text.text = expression
    }
    @IBAction func btn_multiply_act(_ sender: Any) {
        expression += "*"
        res_text.text = expression
    }
    @IBAction func btn_plus_act(_ sender: Any) {
        expression += "+"
        res_text.text = expression
    }
    
    
    var expression: String = ""
    
    
    @IBAction func btn_0_act(_ sender: Any) {
        expression += "0"
        res_text.text = expression
    }
    @IBAction func btn_1_act(_ sender: Any) {
        expression += "1"
        res_text.text = expression
    }
    @IBAction func btn_2_act(_ sender: Any) {
        expression += "2"
        res_text.text = expression
    }
    @IBAction func btn_3_act(_ sender: Any) {
        expression += "3"
        res_text.text = expression
    }
    @IBAction func btn_4_act(_ sender: Any) {
        expression += "4"
        res_text.text = expression
    }
    @IBAction func btn_5_act(_ sender: Any) {
        expression += "5"
        res_text.text = expression
    }
    @IBAction func btn_6_act(_ sender: Any) {
        expression += "6"
        res_text.text = expression
    }
    @IBAction func btn_7_act(_ sender: Any) {
        expression += "7"
        res_text.text = expression
    }
    @IBAction func btn_8_act(_ sender: Any) {
        expression += "8"
        res_text.text = expression
    }
    @IBAction func btn_9_act(_ sender: Any) {
        expression += "9"
        res_text.text = expression
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

