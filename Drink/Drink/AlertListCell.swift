//
//  AlertListCell.swift
//  Drink
//
//  Created by Junghun Park on 2022/03/14.
//

import UIKit

class AlertListCell: UITableViewCell {

    @IBOutlet var meridiemLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var alertSwitch: UISwitch!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func alertSwitchValueChanged(_ sender: UISwitch) {
        guard let data = UserDefaults.standard.value(forKey: "alerts") as? Data,
              var alerts = try? PropertyListDecoder().decode([Alert].self, from: data) else {return}
        alerts[sender.tag].isOn = sender.isOn
        UserDefaults.standard.set(try? PropertyListEncoder().encode(alerts), forKey: "alerts")
    }
}
