//
//  ShareViewController.swift
//  bagit
//
//  Created by maxime marinel on 30/12/2016.
//  Copyright © 2016 maxime marinel. All rights reserved.
//

import UIKit
import Social
import WallabagKit

@objc(ShareViewController)
class ShareViewController: UIViewController {

    lazy var notificationView: UIView = {
        let notification = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        notification.backgroundColor = .white
        notification.layer.cornerRadius = 9.0
        notification.center = self.view.center

        let image = UIImageView(frame: CGRect(x: 25, y: 25, width: 50, height: 50))
        image.image = #imageLiteral(resourceName: "wallabag")

        notification.addSubview(image)

        return notification
    }()

    lazy var backView: UIView = {
        let back = UIView(frame: self.view.frame)
        back.backgroundColor = .gray
        back.alpha = 0.6
        return back
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        //WallabagApi.init(userStorage: UserDefaults(suiteName: "group.wallabag.share_extension")!)
        view.addSubview(backView)
        view.addSubview(notificationView)
    }

    override func viewWillAppear(_ animated: Bool) {
        /*if WallabagApi.isConfigured() {
            guard let items = extensionContext?.inputItems as? [NSExtensionItem] else {
                self.extensionContext?.cancelRequest(withError: NSError())
                return
            }
            for item in items {
                guard let attachements = item.attachments as? [NSItemProvider] else {
                    self.extensionContext?.cancelRequest(withError: NSError())
                    return
                }
                for attachement in attachements {
                    if attachement.hasItemConformingToTypeIdentifier("public.url") {
                        attachement.loadItem(forTypeIdentifier: "public.url", options: nil, completionHandler: { (url, _) -> Void in
                            if let shareURL = url as? NSURL {
                                WallabagApi.addArticle(shareURL as URL, completion: { _ in
                                    UIView.animate(withDuration: 1.0, animations: {
                                        self.notificationView.alpha = 0.0
                                    }, completion: { _ in
                                        self.extensionContext?.completeRequest(returningItems: [], completionHandler: nil)
                                    })
                                })
                            } else {
                                self.extensionContext?.cancelRequest(withError: NSError())
                            }
                        })
                    }
                }
            }
        } else {
            self.extensionContext?.cancelRequest(withError: NSError())
        }*/
    }
}
