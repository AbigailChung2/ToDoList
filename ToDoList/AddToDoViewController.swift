//
//  AddToDoViewController.swift
//  ToDoList
//
//  Created by Sun A Kim on 6/28/22.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {
    var previousVC = TableViewController()
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addTapped(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let context = appDelegate.persistentContainer.viewContext
        
        let toDo = ToDoCD(context: context)
        
        toDo.name = titleTextField.text
        toDo.important = importantSwitch.isOn
        
        appDelegate.saveContext()
        
        navigationController?.popViewController(animated: true)
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
