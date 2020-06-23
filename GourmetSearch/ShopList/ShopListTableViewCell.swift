//
//  ShopListTableViewCell.swift
//  GourmetSearch
//
//  Created by user on 2020/06/07.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit
//import TTTAttributedLabel

class ShopListTableViewCell: UITableViewCell, UITextViewDelegate {
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var iconContainer: NSLayoutConstraint!
    @IBOutlet weak var urlLinkLabel: UITextView!
    @IBOutlet weak var coupon: UILabel!
    @IBOutlet weak var station: UILabel!



    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
      //  urlLinkLabel.delegate = self
        //urlLinkLabel.text = "URLにタップできます。\nhttps://www.google.co.jp/"

        let baseString = "これは設定アプリへのリンクを含む文章です。\n\nこちらのリンクはGoogle検索です"

        let attributedString = NSMutableAttributedString(string: baseString)

        attributedString.addAttribute(.link,
                                      value: UIApplication.openSettingsURLString,
                                      range: NSString(string: baseString).range(of: "設定アプリへのリンク"))

        attributedString.addAttribute(.link,
                                      value: "https://www.google.co.jp/",
                                      range: NSString(string: baseString).range(of: "こちら"))

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

//    func attributedLabel(_ label: TTTAttributedLabel!, didSelectLinkWith url: URL!) {
//        if UIApplication.shared.canOpenURL(url! as URL) {
//            UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
//        }
//    }
}

