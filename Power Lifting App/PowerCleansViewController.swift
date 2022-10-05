//
//  PowerCleansViewController.swift
//  Power Lifting App
//
//  Created by Vasant Saladi on 9/4/22.
//

import UIKit

class PowerCleansViewController: UIViewController {

    @IBOutlet weak var GoalLabel: UILabel!
    
    @IBOutlet weak var LastLabel: UILabel!
    
    @IBOutlet weak var setOneWeightTextField: UITextField!
    
    @IBOutlet weak var setTwoWeightTextField: UITextField!
    
    @IBOutlet weak var setThreeWeightTextField: UITextField!
    
    @IBOutlet weak var setOneRepsTextField: UITextField!
    
    @IBOutlet weak var setTwoRepsTextField: UITextField!
    
    @IBOutlet weak var setThreeRepsTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveSession(_ sender: Any) {
        
        
        
        let setThreeWeightTextFieldint : Int? = Int(setThreeWeightTextField.text!)
   
        let setThreeRepsTextFieldint: Int? = Int(setThreeRepsTextField.text!)
        
        let goal = setThreeWeightTextFieldint! + setThreeRepsTextFieldint!/2
        
        let output = String(goal)
        
        GoalLabel.text = output
        
        UserDefaults.standard.set(setThreeWeightTextField.text, forKey: "PCWeight")
        
        UserDefaults.standard.set(GoalLabel.text, forKey: "PCGoal")
        
   
        
        
    }
    

    @IBAction func LastSession(_ sender: Any) {
        
        
        LastLabel.text = UserDefaults.standard.object(forKey: "PCWeight") as? String
        
        GoalLabel.text = UserDefaults.standard.object(forKey: "PCGoal") as? String
        
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
