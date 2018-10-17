// Created on: Oct,15,2018
// Created by: Mohamed Al naggar
// Created for: ICS3U
// This program calculates the price of pizza 
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    
    let instructionLabel = UILabel()
    let pizzaSizeTextField = UITextField()
    let numberOfToppingssTextField = UITextField()
    let checkButton = UIButton()
    let answerLabel = UILabel()
    
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "Enter your order please"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        pizzaSizeTextField.borderStyle = UITextBorderStyle.roundedRect
        pizzaSizeTextField.placeholder = "pick size (large or Extraa large"
        view.addSubview(pizzaSizeTextField)
        pizzaSizeTextField.translatesAutoresizingMaskIntoConstraints = false
        pizzaSizeTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        pizzaSizeTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        numberOfToppingssTextField.borderStyle = UITextBorderStyle.roundedRect
        numberOfToppingssTextField.placeholder = "toppings 1-4"
        view.addSubview(numberOfToppingssTextField)
        numberOfToppingssTextField.translatesAutoresizingMaskIntoConstraints = false
        numberOfToppingssTextField.topAnchor.constraint(equalTo: pizzaSizeTextField.bottomAnchor, constant: 40).isActive = true
        numberOfToppingssTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        checkButton.setTitle("Calculate", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.titleLabel?.textAlignment = .center
        checkButton.addTarget(self, action: #selector(checkNumberOfStudents), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo:numberOfToppingssTextField.bottomAnchor, constant: 20).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    @objc func checkNumberOfStudents() {
         
        //input
        let sizePrice = (pizzaSizeTextField.text!)
        var sizePrice2 : Double = 0
        
        if sizePrice == "Large" {
            //output
            sizePrice2 = 6.00
        }
        if sizePrice == "Extra large" {
            sizePrice2 = 10.00
        }
        
        let numberOfToppings = (numberOfToppingssTextField.text!) 
        var numberOfToppings2 : Double = 0
        
        
        
        if numberOfToppings == "1" {
            numberOfToppings2 = 1.00
        }
        if numberOfToppings == "2" {
            numberOfToppings2 = 1.75
        }
        if numberOfToppings == "3" {
            numberOfToppings2 = 2.50
        }
        if numberOfToppings == "4" {
            numberOfToppings2 = 3.25
        }
        
        
        // subtotal of size and toppings
        var subtotal =
            numberOfToppings2 + sizePrice2
        
        // apply tax for total (13%)
        var total = subtotal * 1.13 
        answerLabel.text = String(total)
        
        
    }
    
    
}

var prefersStatusBarHidden: Bool {
    return true
}


// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
