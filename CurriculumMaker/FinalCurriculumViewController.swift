//
//  FinalCurriculumViewController.swift
//  CurriculumMaker
//
//  Created by Luan Arruda on 14/11/23.
//

import UIKit

class FinalCurriculumViewController: UIViewController {
    
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbOffice: UILabel!
    @IBOutlet weak var lbAge: UILabel!
    @IBOutlet weak var lbAddress: UILabel!
    @IBOutlet weak var lbGithub: UILabel!
    @IBOutlet weak var svGithub: UIStackView!
    @IBOutlet weak var lbEmail: UILabel!
    @IBOutlet weak var svEmail: UIStackView!
    @IBOutlet weak var lbLinkedin: UILabel!
    @IBOutlet weak var svLindedin: UIStackView!
    @IBOutlet weak var lbObjective: UILabel!
    @IBOutlet weak var svObjective: UIStackView!
    @IBOutlet weak var lbHardSkills: UILabel!
    @IBOutlet weak var svHardSkills: UIStackView!
    @IBOutlet weak var lbSoftSkills: UILabel!
    @IBOutlet weak var svSoftSkills: UIStackView!
    @IBOutlet weak var lbExperience: UILabel!
    @IBOutlet weak var svExperience: UIStackView!
    @IBOutlet weak var lbGraduation: UILabel!
    @IBOutlet weak var svGraduation: UIStackView!
    
    var curriculum: Curriculum!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbName.text = curriculum.name
        lbOffice.text = curriculum.office
        lbAge.text = "\(curriculum.age) anos"
        lbAddress.text = curriculum.city
        
        if curriculum.gitHubStatus {
            lbGithub.text = curriculum.gitHub
        } else {
            svGithub.isHidden = true
            //disableConstrains(svGithub)
        }
        
        if curriculum.emailStatus {
            lbEmail.text = curriculum.email
        } else {
            svEmail.isHidden = true
            //disableConstrains(svEmail)
        }

        if curriculum.linkedinStatus {
            lbLinkedin.text = curriculum.linkedin
        } else {
            svLindedin.isHidden = true
            //disableConstrains(svLindedin)
        }
        
        if curriculum.objectiveStatus {
            lbObjective.text = curriculum.objective
        } else {
            svObjective.isHidden = true
            //disableConstrains(svObjective)
        }
        
        if curriculum.hardSkillsStatus {
            lbHardSkills.text = curriculum.hardSkills
        } else {
            svHardSkills.isHidden = true
            //disableConstrains(svHardSkills)
        }

        if curriculum.softSkillsStatus {
            lbSoftSkills.text = curriculum.softSkills
        } else {
            svSoftSkills.isHidden = true
            //disableConstrains(svSoftSkills)
        }
        
        if curriculum.experienceStatus {
            lbExperience.text = curriculum.experience
        } else {
            svExperience.isHidden = true
            //disableConstrains(svExperience)
        }
        
        if curriculum.graduationStatus {
            lbGraduation.text = curriculum.graduation
        } else {
            svGraduation.isHidden = true
            //disableConstrains(svGraduation)
        }

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if navigationItem.hidesBackButton == true {
            navigationItem.hidesBackButton = false
        } else {
            navigationItem.hidesBackButton = true
        }
    }

}
