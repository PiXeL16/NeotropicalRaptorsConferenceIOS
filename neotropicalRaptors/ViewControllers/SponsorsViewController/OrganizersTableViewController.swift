//
//  SponsorsViewController.swift
//  trySwift
//
//  Created by Natasha Murashev on 2/11/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

import UIKit

class OrganizersTableViewController: UITableViewController {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        title = "Organizers"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerNib(UINib(nibName: String(SponsorTableViewCell), bundle: nil), forCellReuseIdentifier: String(SponsorTableViewCell))
        tableView.estimatedRowHeight = 83
        tableView.rowHeight = UITableViewAutomaticDimension

    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return Sponsor.sponsors.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(String(SponsorTableViewCell), forIndexPath: indexPath) as! SponsorTableViewCell
        
        let sponsor = sponsorAtIndexPath(indexPath)
        cell.configure(withSponsor: sponsor)
        
        return cell
    }
    
//    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        
////        let sponsorLevel = Sponsor.Level(rawValue: section)!
////        return sponsorLevel.title
//    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        let sponsor = sponsorAtIndexPath(indexPath)
        
        let webViewController = WebDisplayViewController()
        webViewController.url = NSURL(string: "http://\(sponsor.website)")!
        webViewController.displayTitle = sponsor.name
        
        self.navigationController?.pushViewController(webViewController, animated: true)
    }

}

private extension OrganizersTableViewController {
    
    func sponsorAtIndexPath(indexPath: NSIndexPath) -> Sponsor {
        
        return Sponsor.sponsors[indexPath.row]

//        switch Sponsor.Level(rawValue: indexPath.section)! {
//        case .Diamond:
//            return Sponsor.diamondSponsors[indexPath.row]
//        case .Gold:
//            return Sponsor.goldSponsors[indexPath.row]
//        case .Silver:
//            return Sponsor.silverSponsors[indexPath.row]
//        }
//
    }
}
