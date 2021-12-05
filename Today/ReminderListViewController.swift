//
//  ViewController.swift
//  Today
//
//  Created by 양호준 on 2021/12/05.
//

import UIKit

class ReminderListViewController: UITableViewController {
    static let showDetailSegueIdentifier = "ShowReminderDetailSegue"
}

extension ReminderListViewController {
    static let reminderListCellIdentifier = "ReminderListCell"
    
    override func tableView(_ tableview: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Reminder.testData.count
    }
    
    override func tableView(_ tableview: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableview.dequeueReusableCell(withIdentifier: Self.reminderListCellIdentifier, for: indexPath) as? ReminderListCell else {
            fatalError("Unable to dequeue ReminderCell")
        }
        
        let reminder = Reminder.testData[indexPath.row]
        let image = reminder.isComplete ? UIImage(systemName: "circle.fill") : UIImage(systemName: "circle")
        
        cell.titleLabel.text = reminder.title
        cell.dateLabel.text = reminder.dueDate.description
        cell.doneButton.setBackgroundImage(image, for: .normal)
        cell.doneButtonAction = {
            Reminder.testData[indexPath.row].isComplete.toggle()
            tableview.reloadRows(at: [indexPath], with: .none)
        }
        
        return cell
    }
}
