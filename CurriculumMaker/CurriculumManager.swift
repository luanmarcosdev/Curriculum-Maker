//
//  CurriculumManager.swift
//  CurriculumMaker
//
//  Created by Luan Arruda on 08/11/23.
//

import Foundation

class CurriculumManager {
    
    var curriculums: [Curriculum] = []
    
    static let shared = CurriculumManager()
    
    private init () {
    }
    
    func addCurriculum(curriculum: Curriculum){
        curriculums.append(curriculum)
    }
    
    func getCurriculum() -> [Curriculum] {
        return self.curriculums
    }
}
