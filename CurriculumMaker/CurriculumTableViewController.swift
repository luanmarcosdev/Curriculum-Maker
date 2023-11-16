//
//  CurriculumTableViewController.swift
//  CurriculumMaker
//
//  Created by Luan Arruda on 08/11/23.
//

import UIKit

class CurriculumTableViewController: UITableViewController {
    
    var curriculum = CurriculumManager.shared
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! FinalCurriculumViewController
        let selectedCurriculum = curriculum.curriculums[tableView.indexPathForSelectedRow!.row]
        viewController.curriculum = selectedCurriculum
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return curriculum.curriculums.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CurriculumsTableViewCell
        
        cell.prepare(with: curriculum.curriculums, index: indexPath.row)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
           curriculum.curriculums.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            save()
        }
    }
    
    func save() {
        let json = try? JSONEncoder().encode(curriculum.curriculums)
        defaults.set(json, forKey: "curriculums")
        tableView.reloadData()
    }
    
}
