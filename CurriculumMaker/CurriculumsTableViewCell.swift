//
//  CurriculumsTableViewCell.swift
//  CurriculumMaker
//
//  Created by Luan Arruda on 08/11/23.
//

import UIKit

class CurriculumsTableViewCell: UITableViewCell {

    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbOffice: UILabel!
    @IBOutlet weak var lbCity: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func prepare(with curriculum: [Curriculum], index: Int) {
        lbName.text = curriculum[index].name
        lbOffice.text = curriculum[index].office
        lbCity.text = "📍\(curriculum[index].city)"
    }

}
