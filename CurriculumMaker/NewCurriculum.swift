//
//  NewCurriculum.swift
//  CurriculumMaker
//
//  Created by Luan Arruda on 13/11/23.
//

import Foundation

class NewCurriculum {
    
    static let shared = NewCurriculum()
    
    private init(){
    }
    
    var curriculum = CurriculumManager.shared
    
    var name: String!
    var age: Int!
    var city: String!
    var office: String!
        
    var linkedin: String?
    var linkedinStatus: Bool = false
    var gitHub: String?
    var gitHubStatus: Bool = false
    var email: String?
    var emailStatus: Bool = false
        
    var hardSkills: String?
    var hardSkillsStatus: Bool = false
    var softSkills: String?
    var softSkillsStatus: Bool = false
        
    var graduation: String?
    var graduationStatus: Bool = false
    var objective: String?
    var objectiveStatus: Bool = false
    var experience: String?
    var experienceStatus: Bool = false
    
    func generate() {
        let newCurriculum = Curriculum(name: name, age: age, city: city, office: office, linkedin: linkedin, linkedinStatus: linkedinStatus, gitHub: gitHub, gitHubStatus: gitHubStatus, email: email, emailStatus: emailStatus, hardSkills: hardSkills, hardSkillsStatus: hardSkillsStatus, softSkills: softSkills, softSkillsStatus: softSkillsStatus, graduation: graduation, graduationStatus: graduationStatus, objective: objective, objectiveStatus: objectiveStatus, experience: experience, experienceStatus: experienceStatus)
        curriculum.addCurriculum(curriculum: newCurriculum)
    }
    
    
}
