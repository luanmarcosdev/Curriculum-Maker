//
//  CurriculumManager.swift
//  CurriculumMaker
//
//  Created by Luan Arruda on 08/11/23.
//

import Foundation

class Curriculum: Codable {
          
     var name: String
     var age: Int
     var city: String
     var office: String
     
     var linkedin: String?
     var linkedinStatus: Bool
     var gitHub: String?
     var gitHubStatus: Bool
     var email: String?
     var emailStatus: Bool
     
     var hardSkills: String?
     var hardSkillsStatus: Bool
     var softSkills: String?
     var softSkillsStatus: Bool
     
     var graduation: String?
     var graduationStatus: Bool
     var objective: String?
     var objectiveStatus: Bool
     var experience: String?
     var experienceStatus: Bool

     init(name: String, age: Int, city: String, office: String, linkedin: String?, linkedinStatus: Bool, gitHub: String?, gitHubStatus: Bool, email: String?, emailStatus: Bool, hardSkills: String?, hardSkillsStatus: Bool, softSkills: String?, softSkillsStatus: Bool, graduation: String?, graduationStatus: Bool, objective: String?, objectiveStatus: Bool, experience: String?, experienceStatus: Bool) {
         self.name = name
         self.age = age
         self.city = city
         self.office = office
         self.linkedin = linkedin
         self.linkedinStatus = linkedinStatus
         self.gitHub = gitHub
         self.gitHubStatus = gitHubStatus
         self.email = email
         self.emailStatus = emailStatus
         self.hardSkills = hardSkills
         self.hardSkillsStatus = hardSkillsStatus
         self.softSkills = softSkills
         self.softSkillsStatus = softSkillsStatus
         self.graduation = graduation
         self.graduationStatus = graduationStatus
         self.objective = objective
         self.objectiveStatus = objectiveStatus
         self.experience = experience
         self.experienceStatus = experienceStatus
     }
    
}
