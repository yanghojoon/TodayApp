//
//  ViewController.swift
//  Today
//
//  Created by 양호준 on 2021/12/05.
//

import UIKit

class ReminderListViewController: UITableViewController {
    static let showDetailSegueIdentifier = "ShowReminderDetailSegue"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Self.showDetailSegueIdentifier,
           let destination = segue.destination as? ReminderDetailViewController,
           let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell) {
            let reminder = Reminder.testData[indexPath.row]
            destination.configure(with: reminder)
        }
    }
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
        
        cell.configure(title: reminder.title, dateText: reminder.dueDate.description, isDone: reminder.isComplete) {
            Reminder.testData[indexPath.row].isComplete.toggle()
            tableview.reloadRows(at: [indexPath], with: .none)
        }
        
        return cell
    }
}
