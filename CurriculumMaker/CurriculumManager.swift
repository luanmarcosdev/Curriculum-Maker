//
//  CurriculumManager.swift
//  CurriculumMaker
//
//  Created by Luan Arruda on 08/11/23.
//

import Foundation

class CurriculumManager {
    
    var curriculums: [Curriculum] = []
    let userDefaults = UserDefaults.standard
    
    static let shared = CurriculumManager()
    
    private init () {
        loadCurriculums()
    }
    
    func loadCurriculums() {
        if let jsonData = userDefaults.data(forKey: "curriculums") {
            do {
                curriculums = try JSONDecoder().decode([Curriculum].self, from: jsonData)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func addCurriculum(curriculum: Curriculum){
        curriculums.append(curriculum)
        save()
    }
    
    func save(){
        do {
            let jsonData = try JSONEncoder().encode(curriculums)
            userDefaults.set(jsonData, forKey: "curriculums")
            print("Dados salvos com sucesso!")
        } catch {
            print("Erro ao salvar dados: \(error.localizedDescription)")
        }
    }
}
