//
//  ScheduleViewController.swift
//  trySwift
//
//  Created by Natasha Murashev on 2/10/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

import XLPagerTabStrip
import Timepiece

class ScheduleViewController: ButtonBarPagerTabStripViewController {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        title = "Schedule"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonBarView.registerNib(UINib(nibName: "NavTabButtonCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
        buttonBarView.backgroundColor = .whiteColor()
        settings.style.selectedBarBackgroundColor = .whiteColor()
        settings.style.buttonBarItemFont = UIFont.systemFontOfSize(15)
        buttonBarView.selectedBar.backgroundColor = UIColor.accentColor()
        
        moveToCorrectDate()
    }
    
    override func viewControllersForPagerTabStrip(pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        
        let sessionDay1ViewController = SessionsTableViewController()
        sessionDay1ViewController.dataSource = SessionDataSourceDay1()
        
        let sessionDay2ViewController = SessionsTableViewController()
        sessionDay2ViewController.dataSource = SessionDataSourceDay2()
        
        let sessionDay3ViewController = SessionsTableViewController()
        sessionDay3ViewController.dataSource = SessionDataSourceDay3()
        
        let sessionDay4ViewController = SessionsTableViewController()
        sessionDay4ViewController.dataSource = SessionDataSourceDay4()
        
        return [sessionDay1ViewController, sessionDay2ViewController, sessionDay3ViewController, sessionDay4ViewController]
    }
}

private extension ScheduleViewController {
    
    func moveToCorrectDate() {
        let today = NSDate.today()
        
        let day2 = NSDate.date(year: 2016, month: 10, day: 11)
        if today == day2 {
            moveToViewControllerAtIndex(1)
        }
        
        let day3 = NSDate.date(year: 2016, month: 10, day: 12)
        if today == day3 {
          moveToViewControllerAtIndex(2)   
        }
        
        let day4 = NSDate.date(year: 2016, month: 10, day: 13)
        if today == day4 {
            moveToViewControllerAtIndex(3)
        }
    }
}