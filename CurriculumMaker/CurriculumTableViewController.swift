//
//  CurriculumTableViewController.swift
//  CurriculumMaker
//
//  Created by Luan Arruda on 08/11/23.
//

import UIKit

class CurriculumTableViewController: UITableViewController {

    let curriculum = CurriculumManager.shared.getCurriculum()

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! FinalCurriculumViewController
        let selectedCurriculum = curriculum[tableView.indexPathForSelectedRow!.row]
        viewController.curriculum = selectedCurriculum
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return curriculum.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CurriculumsTableViewCell
        
        cell.prepare(with: curriculum, index: indexPath.row)

        return cell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let selectedCell = curriculum[indexPath.row]
//        performSegue(withIdentifier: "segueSelectedCurriculum", sender: nil)
//    }
    
    
}
