
import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var savedResult: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let savedNumber = UserDefaults.standard.object(forKey: "saved")
        
        if let newNumber = savedNumber as? String {
            
            savedResult.text = newNumber 
        }
    }
    
    
    @IBAction func savedButton(_ sender: Any) {
        
        UserDefaults.standard.set(savedResult.text! , forKey: "saved")
        savedResult.text = resultLabel.text
        
    }
    

    @IBAction func plus(_ sender: Any) {
        
        if let number1 = Int(num1.text!) {
            
            if let number2 = Int(num2.text!) {
                
                let result = number2 + number1
                resultLabel.text = String(result)
            }
        }
        else {
        resultLabel.text = "hatalı değer girdiniz"
        }
        
    }
    
    @IBAction func minus(_ sender: Any) {
        
        if let number1 = Int(num1.text!){
            
            if let number2 = Int(num2.text!){
                
                let result = number1 - number2
                resultLabel.text = String(result)
            }
        }
        else {
        resultLabel.text = "hatalı değer girdiniz"
        }
        
    }
    
    
    @IBAction func division(_ sender: Any) {
        
       if let number1 = Int(num1.text!) {
           if  let number2 = Int(num2.text!){
                
                let result = ( number1 /  number2 ) 
                resultLabel.text = String(result)
            }
        }
        else {
        resultLabel.text = "hatalı değer girdiniz"
    }
    }
    
    @IBAction func multiplication(_ sender: Any) {
        
        if let number1 = Int(num1.text!){
            if let number2 = Int(num2.text!){
                let result = number2 * number1
                resultLabel.text = String(result)
            }
        }
        else {
         
            resultLabel.text = "hatalı değer girdiniz"
        }
       
    }
    
}

