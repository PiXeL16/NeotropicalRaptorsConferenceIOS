//
//  Sponsor.swift
//  trySwift
//
//  Created by Natasha Murashev on 2/10/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

import UIKit

struct Sponsor {
    
//    enum Level: Int {
//        case Diamond, Gold, Silver
//        
//        var title: String {
//            switch self {
//                case .Diamond: return "Diamond"
//                case .Gold: return "Gold"
//                case .Silver: return "Silver"
//            }
//        }
//    }
    
    let name: String
    let website: String
    let twitter: String?
    let logo: UIImage
//    let level: Level
    let description: String?
}

extension Sponsor {
    
    static let sponsors = [peregrineFund, fundacionRapaces, neotropicalRaptorNetwork]
//    static let goldSponsors = [mercari, line, kytrade]
//    static let silverSponsors = [fenrir, denso, voyageGroup, dena, freee]
    
    // MARK: Diamond Sponsors
    static let peregrineFund = Sponsor(
        name: "The Peregrine Fund",
        website: "www.peregrinefund.org",
        twitter: "peregrinefund",
        logo: UIImage(named: "peregrineFundLogo")!,
//        level: .Diamond,
        description: nil
    )
    
    static let fundacionRapaces = Sponsor(
        name: "Fundación Rapaces de Costa Rica",
        website: "www.rapacesdecostarica.org",
        twitter: "RapacesCR",
        logo: UIImage(named: "rapacesDeCostaRicaLogo")!,
//        level: .Diamond,
        description: nil
    )
    
    // MARK: Gold Sponsors
    static let neotropicalRaptorNetwork = Sponsor(
        name: "The Neotropical Raptor Network",
        website: "www.neotropicalraptors.org",
        twitter: nil,
        logo: UIImage(named: "neotropicalRaptorNetworkLogo")!,
//        level: .Gold,
        description: nil
    )
    
//    static let kytrade = Sponsor(
//        name: "KY TRADE CO., LTD.",
//        website: "www.kytrade.co.jp",
//        twitter: nil,
//        logo: UIImage(named: "kyt")!,
////        level: .Gold,
//        description: nil
//    )
//    
//    static let line = Sponsor(
//        name: "LINE Corporation",
//        website: "linecorp.com",
//        twitter: "LINEjp_official",
//        logo: UIImage(named: "line")!,
////        level: .Gold,
//        description: "LINE Corporation is based in Japan and operates the LINE messenger app and other various content and services offered on the LINE Platform. LINE allows users to freely enjoy communication with other users around the world via audio or video calls, or in one-to-one or group messages, where users have access to a diverse array of emotive stickers."
//    )
//    
//    // MARK: Silver Sponsors
//    
//    static let fenrir = Sponsor(
//        name: "Fenrir Inc.",
//        website: "www.fenrir-inc.com",
//        twitter: "fenrir_official",
//        logo: UIImage(named: "fenrir")!,
//        level: .Silver,
//        description: "Along with the Sleipnir Web Browser, we work with big Japanese companies to develop apps. At offices in Osaka (HQ), Tokyo, Nagoya, and Shimane, we boost productivity by using new technologies. We have been praised for app development that is committed to the user experience, and have developed over 400 apps, with popular apps downloaded over a million times."
//    )
//    
//    static let denso = Sponsor(
//        name: "DENSO IT Laboratory, Inc.",
//        website: "www.d-itlab.co.jp",
//        twitter: "densoitlab",
//        logo: UIImage(named: "denso")!,
//        level: .Silver,
//        description: nil
//    )
//    
//    static let voyageGroup = Sponsor(
//        name: "VOYAGE GROUP",
//        website: "voyagegroup.com",
//        twitter: "tech_voyage",
//        logo: UIImage(named: "voyage")!,
//        level: .Silver,
//        description: "The Business philosophy of VOYAGE GROUP is created from two parts: SOUL and CREED.\n\n■SOUL: creating a fantastic world.\n\n■CREED: Keep challenging.\n\tThink on your own, act on your own.\n\tPursue for the essence.\n\tOverwhelming speed.\n\tAchieve the work in a team.\n\tEnjoyment for everything.\n\tGo straightforward and be honest.\n\tDream, spirit and passion."
//    )
//    
//    static let dena = Sponsor(
//        name: "DeNa",
//        website: "dena.com",
//        twitter: "DeNACorp",
//        logo: UIImage(named: "dena")!,
//        level: .Silver,
//        description: "DeNA develops and operates mobile and online services including games and e-commerce. Founded in Tokyo in 1999, DeNA is currently listed on the Tokyo Stock Exchange with over 2,000 employees.For more information, visit: dena.com"
//    )
//    
//    static let freee = Sponsor(
//        name: "freee K.K.",
//        website: "freee.co.jp",
//        twitter: "freee_jp",
//        logo: UIImage(named: "freee")!,
//        level: .Silver,
//        description: "freee provides online software to serve the SMB focus on their creative job by simplifying backoffice tasks. freee has started its service from accounting software on March 2013, now having 4 services in total to help the business to launch and develop.  freee currently has over 500,000 SMB users and over 2200 accounting firms, and in February 2016 was chosen by a 3rd party research agent* as the No. 1 cloud-based accounting software in Japan by market share."
//    )
    
}