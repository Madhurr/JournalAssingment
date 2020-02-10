//
//  noteTableViewCell.swift
//  Journal X Simple
//
//  Created by ADM-12 on 10/02/20.
//  Copyright © 2020 Amogh Joshi. All rights reserved.
//

import UIKit

class noteTableViewCell: UITableViewCell {

    @IBOutlet weak var datePickerButton: UIButton!
    @IBOutlet weak var DescriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var cellDivisorView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func datePickerTapped(_ sender: Any) {
    }
    
    
    func configureCell(note: Note){
        self.titleLabel.text = note.noteTitle?.uppercased()
        self.DescriptionLabel.text = note.noteDescription
       let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let dateString = formatter.string(from: Date())
        let cellDateString = formatter.date(from: dateString)
        formatter.dateFormat = "dd-MM-yyyy"
        let myDateString = formatter.string(from: cellDateString!)
//        self.datePickerButton.titleLabel?.transform =  self.datePickerButton.titleLabel?.transform.rotated(by: CGFloat(M_PI_2)) ?? ""
        self.datePickerButton.titleLabel?.text = myDateString
    }
}
