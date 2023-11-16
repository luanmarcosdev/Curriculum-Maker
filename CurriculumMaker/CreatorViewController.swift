//
//  CreatorViewController.swift
//  CurriculumMaker
//
//  Created by Luan Arruda on 08/11/23.
//

import UIKit

class CreatorViewController: UIViewController {
    
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfAge: UITextField!
    @IBOutlet weak var tfCity: UITextField!
    @IBOutlet weak var tfOffice: UITextField!
    @IBOutlet weak var tfLinkedin: UITextField!
    @IBOutlet weak var swLinkedin: UISwitch!
    @IBOutlet weak var tfGitHub: UITextField!
    @IBOutlet weak var swGitHub: UISwitch!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var swEmail: UISwitch!
    @IBOutlet weak var tfHardSkills: UITextView!
    @IBOutlet weak var swHardSkills: UISwitch!
    @IBOutlet weak var tfSoftSkills: UITextView!
    @IBOutlet weak var swSoftSkills: UISwitch!
    @IBOutlet weak var tfGraduation: UITextField!
    @IBOutlet weak var swGraduation: UISwitch!
    @IBOutlet weak var tfObjective: UITextView!
    @IBOutlet weak var swObjective: UISwitch!
    @IBOutlet weak var tfExperience: UITextView!
    @IBOutlet weak var swExperience: UISwitch!
    
    var newCurriculum = NewCurriculum.shared

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func continueForLinksAndPortfolio(_ sender: UIButton) {
        var currentAge: Int {
            if let age = Int(tfAge.text!) {
                return 2023 - age
            } else {
                return 0
            }
        }
        newCurriculum.name = tfName.text!
        newCurriculum.age = currentAge
        newCurriculum.city = tfCity.text!
        newCurriculum.office = tfOffice.text!
        checkValidation()
    }
    
    @IBAction func continueForSkills(_ sender: UIButton) {
        newCurriculum.linkedin = tfLinkedin.text
        newCurriculum.linkedinStatus = swLinkedin.isOn
        newCurriculum.gitHub = tfGitHub.text
        newCurriculum.gitHubStatus = swGitHub.isOn
        newCurriculum.email = tfEmail.text
        newCurriculum.emailStatus = swEmail.isOn
        performSegue(withIdentifier: "segueSkills", sender: nil)
    }
    
    @IBAction func continueForFinalScreen(_ sender: UIButton) {
        newCurriculum.hardSkills = tfHardSkills.text
        newCurriculum.hardSkillsStatus = swHardSkills.isOn
        newCurriculum.softSkills = tfSoftSkills.text
        newCurriculum.softSkillsStatus = swSoftSkills.isOn
        performSegue(withIdentifier: "segueFinalScreen", sender: nil)
    }
    
    
    @IBAction func finishEditing(_ sender: UIButton) {
        newCurriculum.graduation = tfGraduation.text
        newCurriculum.graduationStatus = swGraduation.isOn
        newCurriculum.objective = tfObjective.text
        newCurriculum.objectiveStatus = swObjective.isOn
        newCurriculum.experience = tfExperience.text
        newCurriculum.experienceStatus = swExperience.isOn
        newCurriculum.generate()
        confirmationView()
    }
    
    func checkValidation() {
        if tfName.text?.isEmpty ?? true || tfAge.text?.isEmpty ?? true || tfCity.text?.isEmpty ?? true || tfOffice.text?.isEmpty ?? true {
            let alertController = UIAlertController(title: "Ops...", message: "Informações essenciais!\n Complete os campos para continuar.", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alertController.addAction(okAction)
            self.present(alertController, animated: true)
        } else {
            performSegue(withIdentifier: "seguePortfolio", sender: nil)
        }
    }
    
    func confirmationView(){
        let confirmationViewController = storyboard?.instantiateViewController(withIdentifier: "ConfirmationViewController")
        confirmationViewController!.modalPresentationStyle = .overCurrentContext
        confirmationViewController!.modalTransitionStyle = .crossDissolve
        present(confirmationViewController!, animated: true)
    }
    
}

extension CreatorViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == tfName {
            tfAge.becomeFirstResponder()
        } else if textField == tfCity {
            tfOffice.becomeFirstResponder()
        } else if textField == tfOffice {
            tfOffice.resignFirstResponder()
        } else if textField == tfLinkedin {
            tfGitHub.becomeFirstResponder()
        } else if textField == tfGitHub {
            tfEmail.becomeFirstResponder()
        } else if textField == tfEmail {
            tfEmail.resignFirstResponder()
        } else if textField == tfGraduation {
            tfObjective.becomeFirstResponder()
        }
        return true
    }
}
