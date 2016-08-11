//
//  Speaker.swift
//  trySwift
//
//  Created by Natasha Murashev on 2/10/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

import UIKit
import Toucan

struct Speaker {
    let name: String
    let twitter: String
    let image: UIImage
    let bio: String
    let presentation: Presentation
}

extension Speaker {
    
    static let speakers = [ashFurrow, caesarWirth, jesseSquires, syoIkeda, veronicaRay, chrisEidhof, timOliver].sort { $0.name < $1.name }
    
    static let ashFurrow = Speaker(
        name: "Ash Furrow",
        twitter: "ashfurrow",
        image: Toucan(image: UIImage(named: "ashfurrow")!).maskWithEllipse().image,
        bio: "Ash Furrow is a Canadian iOS developer and author, currently working at Artsy. He has published four books, built many apps, and is a contributor to the open source community. On his blog, he writes about a range of topics, from interesting programming to explorations of analogue film photography.",
        presentation: Presentation(
            title: "An Artsy Testing Tour",
            summary: "Artsy has four iOS applications; all of them are open source, and all of them take different approaches to testing. Why? Because different testing techniques work better or worse in different circumstances. Come hear Ash Furrow discuss the motivations behind the Artsy iOS team's decisions, what struggles they encountered, and how they overcame those challenges. You will leave with a better understanding of when and why testing is important to building fantastic software.")
    )
    
    static let caesarWirth = Speaker(
        name: "Caesar Wirth",
        twitter: "cjwirth",
        image: Toucan(image: UIImage(named: "caesar")!).maskWithEllipse().image,
        bio: "Caesar Wirth is software engineer at CyberAgent, Inc. where he's made a number of iOS apps involving e-commerce, social networks, and streaming video. Just like Swift is cross-platform, he's also written Android apps and backend servers. When not writing code, you can often find him hiking, bouldering, or scouting out delicious Taco Rice around Tokyo.",
        presentation: Presentation(
            title: "Soaring Swiftly - Server Side Swift.",
            summary: "Many Mac and iOS apps talk with a back-end server. Now that Swift is open source, we have the opportunity to write those back-end servers in the same language we write our apps in! I'll tell you how to get up and soaring with a server written in Swift!")
    )
    
    static let jesseSquires = Speaker(
        name: "Jesse Squires",
        twitter: "jesse_squires",
        image: Toucan(image: UIImage(named: "squires")!).maskWithEllipse().image,
        bio: "Jesse is a software developer who works on iOS at Instagram. He writes about Swift and Objective-C on his blog at jessesquires.com, and contributes to many open-source projects on GitHub. He loves running and learning new things, and is fueled primarily by black coffee and black metal.",
        presentation: Presentation(
            title: "Contributing to open source Swift",
            summary: "Do you want to contribute to Swift? Not sure how or where to begin? It can be overwhelming! In this talk we'll explore the different parts of Swift, see how the various Swift projects are related, discuss the skills you need to get started, and learn the best ways to get your first fix accepted. ")
    )
    
    static let syoIkeda = Speaker(
        name: "Syo Ikeda",
        twitter: "ikesyo",
        image: Toucan(image: UIImage(named: "syo")!).maskWithEllipse().image,
        bio: "Syo Ikeda (a.k.a @ikesyo) is an iOS developer lives in Kyoto, working at Hatena. He is the author of Himotoki, a type-safe JSON decoding library made of Swift, and also is contributing to several open source projects such as ReactiveCocoa and Carthage.",
        presentation: Presentation(
            title: "Dive into Swift Ecosystem",
            summary: "Swift became a very popular programming language in this two years and is now open sourced. Its ecosystem should be growing day by day and there are already some services those support Swift or many developer tools themselves are written in Swift. I will introduce the services and tools, and encourage you to use, participate in or contribute to them. It's a great chance to do so! :-)")
    )
    
    static let veronicaRay = Speaker(
        name: "Veronica Ray",
        twitter: "nerdonica",
        image: Toucan(image: UIImage(named: "veronica")!).maskWithEllipse().image,
        bio: "Veronica Ray is a software engineer at LinkedIn on the Video team. Once she rode her bike between two moose. She blogs on Medium and is on Twitter as  @nerdonica.",
        presentation: Presentation(
            title: "Real World Mocking In Swift",
            summary: "Mocks allow us to write fast tests that don’t mess with production data. Without OCMock we will need to write our own mocks, but it doesn’t have to be a lot of work. We will look at techniques for practical mocking in Swift that will allow us to create simple, easy to maintain mocks for the most important parts of our codebase. ")
    )
    
    static let chrisEidhof = Speaker(
        name: "Chris Eidhof",
        twitter: "chriseidhof",
        image: Toucan(image: UIImage(named: "chris")!).maskWithEllipse().image,
        bio: "Chris is a Dutch software developer living in Berlin (Germany). He spends most of his time building iOS and Mac apps, such as Deckset and Scenery. He started UIKonf, objc.io, wrote a book about Functional Programming in Swift and is currently writing a book on Advanced Swift.",
        presentation: Presentation(
            title: "Table View Controllers in Swift",
            summary: "In this talk, we'll look at how we can work with table view controllers in a more Swifty way. We'll use generics, structs and functions to create a reusable subclass of UITableViewController."))

    static let timOliver = Speaker(
        name: "Tim Oliver",
        twitter: "TimOliverAU",
        image: Toucan(image: UIImage(named: "timoliver")!).maskWithEllipse().image,
        bio: "Tim Oliver hails from Perth, Australia! He has been an iOS developer for 6 years, and recently joined Realm in March 2015. Tim has a cool app called iComics and he loves karaoke!",
        presentation: Presentation(
            title: "Advanced Graphics with Core Animation",
            summary:  "Animation is one of the cornerstones of the UI experience on iOS, and thanks to the animation APIs in UIKit, it's incredibly easy. However, by dropping down to Core Animation level, it's possible to create even more dynamic and impressive animations that can really help make your app stand out. This talk will cover the concepts of how Core Animation works in iOS, how to work with the API, as well as examples on what sorts of animations and effects it can enable in your app. ")
    )    
}
